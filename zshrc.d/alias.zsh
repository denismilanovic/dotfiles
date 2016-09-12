#!/bin/zsh
# List Directory Contents
alias ls='ls --color=auto --group-directories-first --dereference-command-line-symlink-to-dir -v'
alias ll='ls -l --human-readable'

# Pacman Wrappers
alias orphans='pacman -Qtdg'
