## {{{
export EDITOR=nv

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/home/limakzi/.local/bin/"
export PATH="$PATH:/home/limakzi/.local/share/pi-node/current/bin/"
## }}}

export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init zsh)"

## options {{{
# free up `!` so it can be aliased instead of expanding history
unsetopt banghist
## }}}

## history {{{
HISTFILE=${XDG_STATE_HOME:-~/.local/state}/zsh/history
HISTSIZE=100000
SAVEHIST=100000

[[ -d ${HISTFILE:h} ]] || mkdir -p ${HISTFILE:h}

setopt share_history        # append as commands run, and pick up other sessions' entries
setopt extended_history     # store timestamp and duration alongside the command
setopt hist_ignore_all_dups # keep only the most recent copy of a repeated command
setopt hist_ignore_space    # leave commands typed with a leading space out of the file
setopt hist_reduce_blanks   # normalise whitespace before storing
## }}}

## helpers {{{
# succeed when a command is available, warn on stderr when it is not
has() {
    command -v "$1" > /dev/null 2>&1 && return 0
    print -u2 "zsh: $1 is not installed"
    return 1
}
## }}}

## aliases {{{
alias -- '!!'='sudo su -'

# fall back to plain ls when lsd is missing
has lsd && alias ls='lsd' ll='lsd --long'

# fall back to plain dig when doggo is missing
has doggo && alias dig='doggo'
## }}}

## lf: quit leaves the shell in lf's last directory {{{
lf() {
    local dir
    dir="$(command lf -print-last-dir "$@")" || return
    [[ -d $dir ]] && cd -- "$dir"
}
## }}}

## ranger: quit leaves the shell in ranger's last directory {{{
ranger() {
    local dir tmp
    tmp="$(mktemp)" || return
    command ranger --choosedir="$tmp" "$@"
    dir="$(<"$tmp")"
    rm -f -- "$tmp"
    [[ -d $dir && $dir != $PWD ]] && cd -- "$dir"
}
## }}}

## completion {{{
ZSH_CACHE_DIR=${XDG_CACHE_HOME:-~/.cache}/zsh
[[ -d $ZSH_CACHE_DIR ]] || mkdir -p $ZSH_CACHE_DIR

autoload -Uz compinit
compinit -d $ZSH_CACHE_DIR/zcompdump

zstyle ':completion:*' menu select                                   # arrow through candidates in a menu
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*' # case-insensitive, then substring
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}               # colour candidates like ls
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'   # group headers
zstyle ':completion:*' group-name ''                                 # group candidates by type
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $ZSH_CACHE_DIR/zcompcache
## }}}

## fzf {{{
has fzf && eval "$(fzf --zsh)"
## }}}

## keyboard shortcuts {{{
bindkey -s '^e' '\eqlf\n'
## }}}
