#!/bin/bash

# Send a title between APT and ST characters to update the pane title and force a tmux refresh
export PROMPT_COMMAND='printf "\033]0;%s@%s:%s\033\\%*s%s\r" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}" "$(tput cols)" "$(declare -f __git_ps1 > /dev/null && __git_ps1 "[%s]")"'
