#!/bin/sh
BIN_DIR="${HOME}/.local/bin"
test -d "$BIN_DIR" && case ":$PATH:" in
	*:${BIN_DIR}:*) ;;  # Already in PATH
	*) export PATH="${BIN_DIR}:$PATH" ;;
esac
unset BIN_DIR

