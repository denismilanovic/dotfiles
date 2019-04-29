#!/bin/bash
for file in ${XDG_CONFIG_HOME:-$HOME/.config}/bashrc.d/*.bash; do
	test -x $file && source $file;
done
