function source_profile()
{
	for script in ${XDG_CONFIG_HOME:-$HOME/.config}/profile.d/*
	do
		# Execute permission enables scripts
		[[ -x "${script}" ]] || continue

		source ${script}
	done
}

# Source from the zshrc.d directory
source_profile ${XDG_CONFIG_HOME:-$HOME/.config}/profile.d
