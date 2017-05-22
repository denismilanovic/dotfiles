for script in ${XDG_CONFIG_HOME:-$HOME/.config}/bashrc.d/*.zsh
do
	# Execute permission enables scripts
	[[ -x "${script}" ]] || continue
	source ${script}
done
