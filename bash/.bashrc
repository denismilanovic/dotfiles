#!/bin/sh
BASHRC_DIR=${XDG_CONFIG_HOME:-$HOME/.config}/bashrc.d
if [ -d "$BASHRC_DIR" ]; then
	for file in "${BASHRC_DIR}"/*.sh; do
		test -r "$file" && . "$file"
	done
fi
unset BASHRC_DIR
