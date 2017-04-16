# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="\e[36m[\e[32m_\#_\e[31m\u\e[36m@china-cloud \W]\e[m\$ "
export TERM="screen-256color"

/.logo cpp
