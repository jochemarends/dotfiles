#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

set -o emacs

# Enable clearing the screen using ^L while in vi mode 
bind -m vi-insert 'Control-l: clear-screen'

alias vi='nvim'
eval "$(zoxide init bash)"

source /usr/share/git/completion/git-completion.bash

. "$HOME/.cargo/env"

export PATH="/home/jochem/.local/share/solana/install/active_release/bin:$PATH"
