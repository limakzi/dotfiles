export EDITOR=nv

export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init zsh)"

## options {{{
# free up `!` so it can be aliased instead of expanding history
unsetopt banghist
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

