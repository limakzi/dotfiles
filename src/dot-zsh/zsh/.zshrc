## {{{
export EDITOR=nv

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

setopt share_history        # append as commands run, and pick up other sessions' entries
setopt extended_history     # store timestamp and duration alongside the command
setopt hist_ignore_all_dups # keep only the most recent copy of a repeated command
setopt hist_ignore_space    # leave commands typed with a leading space out of the file
setopt hist_reduce_blanks   # normalise whitespace before storing
## }}}

## aliases {{{
alias ls='lsd'
alias ll='lsd --long'
alias -- '!!'='sudo su -'
## }}}

## lf: quit leaves the shell in lf's last directory {{{
lf() {
    local dir
    dir="$(command lf -print-last-dir "$@")" || return
    [[ -d $dir ]] && cd -- "$dir"
}
## }}}

## keyboard shortcuts {{{
bindkey -s '^e' '\eqlf\n'
## }}}
