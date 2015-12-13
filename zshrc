#
# ~/.zshrc
#

alias ls='ls --color=auto'

PATH=$PATH:/opt/android-studio/bin
PATH=$PATH:~/.gem/ruby/2.2.0/bin
PATH=$PATH:$GOPATH/bin
PATH=$PATH:/usr/local/heroku/bin

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/prashant/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


ZSH=/usr/share/oh-my-zsh/
ZSH_THEME=steeef
DISABLE_AUTO_UPDATE="true"
ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# dircolors
eval $(dircolors ~/.dircolors)

screenfetch -c 12,255
