for script in ${XDG_CONFIG_HOME:-$HOME/.config}/profile.d/*
do
	# Execute permission enables scripts
	[[ -x "${script}" ]] || continue
	source ${script}
done
