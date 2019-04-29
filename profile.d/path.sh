add_path() {
	new_path=${1}
	[ -d "${new_path}" ] && case ":$PATH:" in
		*":${new_path}:"*) ;;
		*) export PATH="${new_path}:${PATH}" ;;
	esac
}

add_path "${HOME}/bin"
