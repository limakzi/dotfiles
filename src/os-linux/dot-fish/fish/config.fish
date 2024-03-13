## {{{1 greetings
set -U fish_greeting ""
## }}}1

## {{{1 umask
umask 077
## }}}1

## {{{1 app-zoxide
zoxide init --cmd j --hook pwd fish | source
## }}}1
