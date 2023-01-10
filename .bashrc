#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias init="~/.local/bin/cmake_template.sh"
alias ls='ls --color=auto'
alias vim='nvim'
# Set the root ps1 by default, if the user is non root set the user ps1 (avoid using two if fi)
PS1='\[\e[1;31m\][\[\e[1;31m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;00m\]\$\[\e[0;00m\] '

if [ "$EUID" -ne 0 ]; then
  PS1='\[\e[1;31m\][\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;00m\]\$\[\e[0;00m\] '
fi

. "$HOME/.cargo/env"
