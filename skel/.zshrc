#autoload -U promptinit && promptinit 
# prompt -l (list available prompts)
# prompt  fade red
autoload -U colors && colors  
# PS1="${RED}\u@\h:${BLUE}\W $ ${PLAIN}"
#PROMPT="%{$fg[red]%}$USER@mac:%{$reset_color%}%{$fg[blue]%}%~ $ %{$reset_color%}"
#PROMPT=%m%#
if [ -z $SUDO_COMMAND ]; then
   PROMPT="%{$fg_bold[green]%}$USER@\h:%{$reset_color%}%{$fg_bold[blue]%}%~ $ %{$reset_color%}"
else
   PROMPT="%{$fg_bold[red]%}$USER@\h:%{$reset_color%}%{$fg_bold[blue]%}%~ # %{$reset_color%}"
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
# shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
# shopt -s checkwinsize

WHICHOS=`uname -a | grep x86_64`
PATH=${PATH}:/opt/homebrew/bin:/opt/gfortran/bin
export PATH

## Modified to Follow Default Ubuntu .zshrc
if [ -f ~/.zsh_aliases ]; then
   . ~/.zsh_aliases
fi
