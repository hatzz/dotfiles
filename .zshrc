#! /usr/bin/env zsh

export ZSH="/Users/hatzz/.oh-my-zsh"

eval "$(fnm env)"

# zsh config
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Path exports
# export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

# Config
export HOMEBREW_NO_AUTO_UPDATE=1
export OPS_DIR="$HOME/.ops"

# Aliases
alias vi="nvim"
alias vim="nvim"
alias oldbrew=/usr/local/bin/brew 

# Set
set -o vi

# Increase max file descriptors
ulimit -n 1000000000
