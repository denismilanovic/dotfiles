#!/bin/bash
export PS1='>>> '
export PS2='... '

# Send a title between APT and ST characters to update the pane title and force a tmux refresh
export PROMPT_COMMAND='printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
