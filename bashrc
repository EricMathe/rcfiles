# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true
alias e='emacs'
alias youtube-dl='youtube-dl --proxy socks5://127.0.0.1:1080/'
alias cx='chmod +x'
alias gits='git status'
alias gitc='git commit'
alias gita='git add'
alias gitp='git push'
alias emacs='emacs -nw'
alias free='free -h'
alias du='du -h'
#alias ssh='ssh -p 26780'
alias bashconf='emacs -nw ~/.bashrc ;source ~/.bashrc'
alias l='ls -l'
alias cd..='cd ..'
alias o='less'
alias ll='ls -la'
#export  PS1='\A\[$(ppwd)\]\u@\h:\W>'
export PS1='\[\033[1;37m\]\A\u@\h:\W>\[\033[0m\]'
#some color sequence for text 
#Sequence     Text Color     Sequence       Text Color
#\033[0;30m     Black        \033[1;30m     Dark  Gray
#\033[0;31m     Red          \033[1;31m     Light Red
#\033[0;32m     Green        \033[1;32m     Light Green
#\033[0;33m     Brown        \033[1;33m     Yellow
#\033[0;34m     Blue         \033[1;34m     Light Blue
#\033[0;35m     Purple       \033[1;35m     Light Purple
#\033[0;36m     Cyan         \033[1;36m     Lgitht Cyan
#\033[0;37m     Light Grey   \033[1;37m     Write
#escape Sequences used To Set Baktground Color
#Sequence    Background Color     Sequence       Background Color
#\033[0;40m     Black             \033[0;44m      Blue
#\033[0;41m     Red               \033[0;45m      Purple
#\033[0;42m     Green             \033[0;46m      Cyan
#\033[0;43m     Brown             \033[0;47m      Light Grey
export MAN_POOASIXLY_CORRECT=1

###for auto completion bash
if [ -f /etc/bash_completion ] ;then
    source /etc/bash_completion
    fi
### the following line for GPG config

export GPG_TTY=$(tty)
