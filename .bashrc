# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias setkeyjapan='localectl set-keymap jp106 && localectl set-keymap jp-OADG109A'
alias lh='ls -a | grep ^\\.'


# Original completion definitions.
if [[ -f ~/bash-completion/bash_completion ]]; then
    source ~/bash-completion/bash_completion
fi
