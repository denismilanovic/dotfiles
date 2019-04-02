#!/bin/bash

for script in ${XDG_CONFIG_HOME:-$HOME/.config}/bashrc.d/*.bash
do
	# Execute permission enables scripts
	[[ -x "${script}" ]] || continue
	source ${script}
done
