#!/bin/sh
for file in ${XDG_CONFIG_HOME:-$HOME/.config}/profile.d/*; do
	test -x $file && source $file
done
