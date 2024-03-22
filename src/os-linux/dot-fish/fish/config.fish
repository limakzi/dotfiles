## {{{1 greetings
set -U fish_greeting ""
## }}}1

## {{{1 umask
umask 077
## }}}1

## {{{1 terminal and editor
set -gx EDITOR nvim
set -gx TERMINAL alacritty
## }}}1

## {{{1 app-zoxide
zoxide init --cmd j --hook pwd fish | source
## }}}1

## {{{1 app-starship
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"
starship init fish | source
## }}}1

## {{{1 app-terraform
set -x TF_CLI_CONFIG_FILE "$HOME/.config/terraform/config.tfrc"
## }}}!

## {{{1 app-ssh
export SSH_AUTH_SOCK="/tmp/limakzi-ssh-agent.socket"
## }}}
