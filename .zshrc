function source_zsh_scripts()
{
	for script in ${XDG_CONFIG_HOME:-$HOME/.config}/zshrc.d/*.zsh
	do
		# Execute permission enables scripts
		[[ -x "${script}" ]] || continue

		source ${script}
	done
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source from the zshrc.d directory
source_zsh_scripts $HOME/.config/zshrc.d
