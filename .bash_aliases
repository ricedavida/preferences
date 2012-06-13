#
# ~/.bash_aliases
#

# clone a new factory
alias new_factory='git clone ssh://davidr@engservices.timesys.com/pub/git/factory.git'

# restart the nfs server
alias restart_nfs='sudo service portmap stop && sudo service nfs-kernel-server stop && sudo service portmap start && sudo service nfs-kernel-server start'

#The 'ls' family (in all it's glory)
####################################
alias ls="ls --color=auto"
alias ll="ls -l"
#alias ls="ls --color=auto"  # add colors for filetype recognition
alias la="ls -a"            # show hidden files
alias lx="ls -lXB"          # sort by extension
alias lk="ls -lSr"          # sort by size, biggest last
alias lc="ls -ltcr"         # sort by and show change time, most recent last
alias lu="ls -ltur"         # sort by and show access time, most recent last
alias lt="ls -ltr"          # sort by date, most recent last
alias lm="ls -al |more"     # pipe through 'more'
alias lr="ls -lR"           # recursive ls
alias lsr="tree -Csu"       # nice alternative to 'recursive ls'

# grep goodness
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

function sourceinternal {
      sed -i 's/TSWO_GLOBAL_SOURCE_LOCATION=\"http:\/\/repository.timesys.com\/buildsources\/\"/TSWO_GLOBAL_SOURCE_LOCATION=\"http:\/\/engservices\/mirrors\/sources\/\"/' $1  
}

function sourceexternal {
      sed -i 's/TSWO_GLOBAL_SOURCE_LOCATION=\"http:\/\/engservices\/mirrors\/sources\/\"/TSWO_GLOBAL_SOURCE_LOCATION=\"http:\/\/repository.timesys.com\/buildsources\/\"/' $1
}

