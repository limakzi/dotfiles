export EDITOR=nv

export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init zsh)"

## aliases {{{
alias ls='lsd'
alias ll='lsd --long'
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

