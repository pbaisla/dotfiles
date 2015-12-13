#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ ' #default
#PS1='\e[1;34m\u@\h \w> \e[m' #blue
PS1="\[$(tput bold)\]\[$(tput setaf 63)\]┌──[\[$(tput setaf 41)\]\u@\h\[$(tput setaf 63)\]]──[\[$(tput setaf 140)\]\w\[$(tput setaf 63)\]]\n└╼ \[$(tput setaf 7)\]\[$(tput sgr0)\]"

VISUAL=vim
EDITOR=vim
TERMINAL=termite
HISTCONTROL=ignoreboth:erasedups
CDPATH=$HOME
export GOPATH=/home/prashant/go

PATH=$PATH:/opt/android-studio/bin
PATH=$PATH:~/.gem/ruby/2.2.0/bin
PATH=$PATH:$GOPATH/bin
PATH=$PATH:/usr/local/heroku/bin

function vnc() {
    x0vncserver -display :0 -passwordfile ~/.vnc/passwd
}

# dircolors
eval $(dircolors ~/.dircolors)

# man pages in vim
vman() {
    vim -c "SuperMan $*"

    if [ "$?" != "0" ]; then
        echo "No manual entry for $*"
    fi
}

screenfetch
