#!/bin/sh
PROFILE_DIR=${XDG_CONFIG_HOME:-$HOME/.config}/profile.d
if [ -d "$PROFILE_DIR" ]; then
	for file in "${PROFILE_DIR}"/*.sh; do
		test -r "$file" && . "$file"
	done
fi
unset PROFILE_DIR
