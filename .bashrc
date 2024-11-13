# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

set -o vi

alias ssh_rpi='ssh jochemarends@192.168.1.249'

scp_rpi () {
    scp $1 jochemarends@192.168.1.249:$2
}

scp_from_rpi () {
    scp jochemarends@192.168.1.249:$1 $2
}

export MPLBACKEND=GTK4Agg

eval "$(zoxide init bash)"

export PATH="/home/jochemarends/.local/share/solana/install/active_release/bin:$PATH"
export PATH=/usr/local/tsserver:$PATH
export TERM="xterm-256color"
export PATH=$PATH:/usr/local/go/bin
export HISTCONTROL=ignoreboth:erasedups
source /usr/share/git/completion/git-completion.bash
