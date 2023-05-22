RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
LTBLUE="\[\e[0;36m\]"
LTGREY="\[\e[0;37m\]"
PLAIN="\[\e[m\]"
# PS1="${RED}\u@\h:${BLUE}\W $ ${PLAIN}"
PS1="${RED}\u@\h:${BLUE}\W $ ${PLAIN}"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

## Modified to Follow Default Ubuntu .bashrc
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi
