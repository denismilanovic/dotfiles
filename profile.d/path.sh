addpath() {
	new_path=${1}
	[ -d "${new_path}" ] && case ":$PATH:" in
		*":${new_path}:"*) ;;
		*) export PATH="${new_path}:${PATH}" ;;
	esac
}

addpath "${HOME}/local/bin"
unset addpath
