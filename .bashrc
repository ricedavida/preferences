#
# ~/.bashrc
#

sh .randline.sh .nerdquotes
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

export EDITOR="vim"

#The 'ls' family (in all it's glory)
####################################
alias ls="ls -G"
alias ll="ls -lG"
#alias ls="ls --color=auto"  # add colors for filetype recognition
alias la="ls -aG"            # show hidden files
alias lx="ls -lXBG"          # sort by extension
alias lk="ls -lSrG"          # sort by size, biggest last
alias lc="ls -ltcrG"         # sort by and show change time, most recent last
alias lu="ls -lturG"         # sort by and show access time, most recent last
alias lt="ls -ltrG"          # sort by date, most recent last
alias lm="ls -alG |more"     # pipe through 'more'
alias lr="ls -lRG"           # recursive ls
alias lsr="tree -CsuG"       # nice alternative to 'recursive ls'

complete -cf sudo
complete -cf man

