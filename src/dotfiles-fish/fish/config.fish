## welcome-message {{{1
set fish_greeting
## }}}1


## path {{{1
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin/" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_path
set -g fish_user_paths "/usr/local/opt/curl-openssl/bin" $fish_user_path
## }}}1


## locale {{{1
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
## }}}1


## iterm2 {{{1
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
## }}}1


## fisher-fzf {{{1
set -U FZF_FIND_FILE_COMMAND "fd --type f . \$dir"
set -U FZF_REVERSE_ISEARCH_OPTS "--preview-window=up:3 --inline-info --height 100%"
set -U FZF_PREVIEW_FILE_CMD "bat"
set -U FZF_COMPLETE 2
set -U FZF_ENABLE_OPEN_PREVIEW 1
## }}}1


## fisher-z {{{1
set -U Z_CMD "z"
set -U Z_OWNER "limakzi"
## }}}1


## fisher-spacefish-prompt {{{1
set -U SPACEFISH_USER_SHOW false
set -U SPACEFISH_NODE_SHOW false
set -U SPACEFISH_JULIA_SHOW false
set -U SPACEFISH_RUBY_SHOW false
set -U SPACEFISH_HASKELL_SHOW false
set -U SPACEFISH_CONDA_SHOW false
set -U SPACEFISH_PHP_SHOW false
set -U SPACEFISH_RUST_SHOW false
set -U SPACEFISH_DOTNET_SHOW false
set -U SPACEFISH_PACKAGE_SHOW false

set -U SPACEFISH_KUBECONTEXT_SHOW false
set -U SPACEFISH_KUBECONTEXT_NAMESPACE_SHOW false

set -U SPACEFISH_BATTERY_THRESHOLD 100

set -U SPACEFISH_PROMPT_SEPARATE_LINE false

set -U SPACEFISH_CHAR_SHOW false
## }}}1


## fisher-python3-virtualenv {{{1
source ~/.venv/bin/activate.fish
## }}}1
