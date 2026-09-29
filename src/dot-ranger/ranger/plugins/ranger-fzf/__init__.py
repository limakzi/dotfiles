import os
import shlex
import shutil
import subprocess
import sys
import tempfile

from ranger.api.commands import Command

PLUGIN_DIRECTORY = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(PLUGIN_DIRECTORY, "..", "ranger-devicons"))
try:
    from devicons import dir_node_exact_matches as DIRECTORY_ICONS
except ImportError:
    DIRECTORY_ICONS = {}

DEFAULT_DIRECTORY_ICON = ""
HOME_DIRECTORY = os.path.expanduser("~")
FZF_ACTION_DELIMITERS = ("()", "[]", "{}", "<>", "~~", "!!", "@@", "##", "%%", "^^")
# fzf runs this file as a script to list directories and to move the search root up.
SCRIPT_COMMAND = f"{shlex.quote(sys.executable)} {shlex.quote(os.path.abspath(__file__))}"


def directory_icon(path):
    return DIRECTORY_ICONS.get(os.path.basename(path), DEFAULT_DIRECTORY_ICON)


def is_below_home(path):
    relative_path = os.path.relpath(path, HOME_DIRECTORY)
    return relative_path == "." or not relative_path.startswith("..")


def split_words(path):
    return [word for word in path.split(os.sep) if word not in ("", ".")]


def path_words(root):
    """Split root into a base ("~" or "") and words, relative to home when below it."""
    if is_below_home(root):
        return "~", split_words(os.path.relpath(root, HOME_DIRECTORY))
    return "", split_words(root)


def prompt_for(root):
    base, words = path_words(root)
    return "/".join([base] + words) + "/ "


def parent_root(root):
    """Drop the last word of root; with no words left, search home."""
    base, words = path_words(root)
    if len(words) <= 1:
        return HOME_DIRECTORY
    return os.path.join(HOME_DIRECTORY if base else os.sep, *words[:-1])


def fzf_action(name, argument):
    """Wrap argument as fzf action argument with a delimiter it does not contain."""
    for left, right in FZF_ACTION_DELIMITERS:
        if left not in argument and right not in argument:
            return f"{name}{left}{argument}{right}"
    return f"{name}:{argument}"


def finder_command():
    fd_executable = shutil.which("fd") or shutil.which("fdfind")
    if fd_executable:
        return f"{fd_executable} --type d --hidden --follow --exclude .git"
    return (
        "find -L . -mindepth 1 \\( -name .git -o -fstype dev -o -fstype proc \\) "
        "-prune -o -type d -print 2>/dev/null | sed 's|^\\./||'"
    )


def start_finder(root):
    return subprocess.Popen(
        finder_command(),
        shell=True,
        cwd=root,
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        universal_newlines=True,
    )


def fzf_line(root, relative_path):
    """Format "<absolute path>\t<icon> <relative path>"; fzf shows the second field."""
    absolute_path = os.path.join(root, relative_path)
    return f"{absolute_path}\t{directory_icon(relative_path)} {relative_path}\n"


def list_directories(root):
    finder = start_finder(root)
    try:
        for line in finder.stdout:
            sys.stdout.write(fzf_line(root, line.rstrip("\n").rstrip("/")))
    except (BrokenPipeError, OSError):
        pass
    finally:
        finder.kill()
        finder.wait()


def read_root(state_path):
    with open(state_path) as state_file:
        return state_file.read()


def write_root(state_path, root):
    with open(state_path, "w") as state_file:
        state_file.write(root)


def list_command(state_path):
    return f"{SCRIPT_COMMAND} list {shlex.quote(state_path)}"


def up_command(state_path):
    return f"{SCRIPT_COMMAND} up {shlex.quote(state_path)}"


def move_root_up(state_path):
    """Store the parent root and print fzf actions that show it."""
    root = parent_root(read_root(state_path))
    write_root(state_path, root)
    change_prompt = fzf_action("change-prompt", prompt_for(root))
    reload = fzf_action("reload", list_command(state_path))
    print(f"{change_prompt}+{reload}")


def main(command, state_path):
    """Entry point when run by fzf; state_path is a file holding the search root."""
    if command == "list":
        list_directories(read_root(state_path))
    elif command == "up":
        move_root_up(state_path)


def create_state_file(root):
    with tempfile.NamedTemporaryFile("w", prefix="ranger-fzf-", delete=False) as state_file:
        state_file.write(root)
        return state_file.name


def fzf_command(root, state_path):
    return [
        "fzf", "+m", "--reverse", "--height=100%",
        f"--prompt={prompt_for(root)}",
        "--delimiter=\t", "--with-nth=2",
        f"--bind=backward-eof:transform:{up_command(state_path)}",
    ]


class fzf_find(Command):
    """
    :fzf_find

    Find a directory using fzf and cd into it.

    The search starts in the current directory, shown as words in the prompt.
    Backspace on an empty query removes the last word to search from a higher
    level; with no words left, it searches the home directory.
    """

    def execute(self):
        selected_path = self.select_directory(self.fm.thisdir.path)
        if selected_path and os.path.isdir(selected_path):
            self.fm.cd(selected_path)

    def select_directory(self, root):
        state_path = create_state_file(root)
        try:
            return self.run_fzf(root, state_path)
        finally:
            os.unlink(state_path)

    def run_fzf(self, root, state_path):
        fzf_process = self.fm.execute_command(
            fzf_command(root, state_path),
            universal_newlines=True,
            stdout=subprocess.PIPE,
            env={**os.environ, "FZF_DEFAULT_COMMAND": list_command(state_path)},
        )
        output, _ = fzf_process.communicate()
        if fzf_process.returncode != 0:
            return None
        return output.split("\t", 1)[0]


if __name__ == "__main__":
    main(*sys.argv[1:3])
