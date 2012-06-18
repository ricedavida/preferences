#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
shopt -s checkwinsize

set_prompt_style () {
  
  #NON PRINTING CHARACTERS NEED TO BE ENCLOSED IN \[ \]
  BB="\033[0;32m" #Bold Blue
  # UC="\e[0;92m" #User Color
  UC="\033[0;36m"
  NC="\033[0m" #No Color
  SYM="$" #Symbol
  PROMPT_COMMAND='RET=$?;'
  RV='$(echo -ne \[$UC\][\[$BB\]$RET )' #Return Value

  if [ `whoami` == "root" ] ; then
    BB="\033[1;91m" 
    UC="\033[0;92m"
    NC="\033[0m"
    IRED="\033[0;91m"
    SYM="#"
    RV='$(echo -ne \[$UC\]\[[$BB\]$RET )' #Return Value
  fi
  PS1="$RV \[$BB\]\h\[$UC\]]\[$BB\]<\[$UC\]\w\[$BB\]>\[$IRED\]$SYM\[$NC\] "
}

set_prompt_style
#export TERM=xterm
export EDITOR="vim"

complete -cf sudo
complete -cf man

exec ~/.randomline ~/.nerdquotes

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
