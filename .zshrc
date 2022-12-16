#! /usr/bin/env zsh

export ZSH="/Users/hatzz/.oh-my-zsh"
export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT=1

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
alias cat="bat"
alias find="fd"
alias ls="exa"
alias grep="rg"

# Set
set -o vi

# Increase max file descriptors
ulimit -n 1000000000

eval "$(fnm env)"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
