#
# ~/.bashrc
# 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -hla --color=auto'
alias vim='nvim'

# Man on chrome without stdout or stderr and in background
function man() {
  command man --html=google-chrome-stable "$@" >/dev/null 2>&1 &>/dev/null &2>&1
}

# Set the root ps1 by default, if the user is non root set the user ps1 (avoid using two if fi)
PS1='\[\e[1;31m\][\[\e[1;31m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;00m\]\$\[\e[0;00m\] '

# Luke smith inspired PS1
if [ "$EUID" -ne 0 ]; then
  PS1='\[\e[1;31m\][\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;00m\]\$\[\e[0;00m\] '
fi
