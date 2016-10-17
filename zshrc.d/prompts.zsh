#!/bin/zsh
# Setting the Prompt
PS1="%B%F{green}%n%f@%F{cyan}%m%f%b%(!.#.:) "

function zle-line-init zle-keymap-select {
	VI_MODE="${${KEYMAP/vicmd/%F{yellow}/(main|viins)/%F{white}}"
	RPS1="%B${VI_MODE}%h%f / %F{cyan}%~%f / %F{green}%D{%y-%m-%d} %D{%H:%M:%S}%b%f"
	RPS2=$RPS1
	zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
