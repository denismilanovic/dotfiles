#!/bin/sh
BIN_DIR="${HOME}/.local/bin"
test -d "$BIN_DIR" && [[ ":$PATH:" != *":${BIN_DIR}:"* ]] && export PATH="${BIN_DIR}:$PATH"
unset BIN_DIR
