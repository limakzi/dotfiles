import importlib
import os
import shutil
import subprocess
import threading

from ranger.api.commands import Command

try:
    DIR_ICONS = importlib.import_module("plugins.ranger-devicons.devicons").dir_node_exact_matches
except ImportError:
    DIR_ICONS = {}

DIR_ICON = ""


def dir_icon(path):
    return DIR_ICONS.get(os.path.basename(path), DIR_ICON)


class fzf_find(Command):
    """
    :fzf_find

    Find a directory below the current one using fzf and cd into it.
    """

    def execute(self):
        fd = shutil.which("fd") or shutil.which("fdfind")
        if fd:
            finder = f"{fd} --type d --hidden --follow --exclude .git"
        else:
            finder = (
                "find -L . -mindepth 1 \\( -name .git -o -fstype dev -o -fstype proc \\) "
                "-prune -o -type d -print 2>/dev/null | sed 's|^\\./||'"
            )

        # Lines are "<path>\t<icon> <path>"; fzf shows the second field and returns the whole line.
        find = subprocess.Popen(
            finder,
            shell=True,
            cwd=self.fm.thisdir.path,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            universal_newlines=True,
        )
        # execute_command blocks until fzf exits, so feed it from a thread through a pipe.
        rfd, wfd = os.pipe()

        def feed():
            try:
                with os.fdopen(wfd, "w") as out:
                    for line in find.stdout:
                        path = line.rstrip("\n").rstrip("/")
                        out.write(f"{path}\t{dir_icon(path)} {path}\n")
            except (BrokenPipeError, OSError):
                pass
            finally:
                find.kill()
                find.wait()

        threading.Thread(target=feed, daemon=True).start()
        try:
            fzf = self.fm.execute_command(
                "fzf +m --reverse --height=100% --prompt='dir> ' --delimiter='\t' --with-nth=2",
                universal_newlines=True,
                stdin=rfd,
                stdout=subprocess.PIPE,
            )
        finally:
            os.close(rfd)
        stdout, _ = fzf.communicate()
        if fzf.returncode != 0:
            return

        selected = os.path.abspath(stdout.split("\t", 1)[0])
        if os.path.isdir(selected):
            self.fm.cd(selected)
