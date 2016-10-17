#!/bin/zsh

# Setting VI mode
bindkey -v

# Reduced timeout to make VI work nicer
export KEYTIMEOUT=1

# Automatically cd into directories
setopt autocd 

# Fancier globbing
setopt extendedglob

# Historical searching with Ctrl+R
bindkey "^R" history-incremental-search-backward
