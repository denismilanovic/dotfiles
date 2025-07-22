#!/bin/sh
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
[ -f "${XDG_CONFIG_HOME}/user-home.dirs" ] && . "${XDG_CONFIG_HOME}/user-home.dirs"
[ -f "${XDG_CONFIG_HOME}/user-dirs.dirs" ] && . "${XDG_CONFIG_HOME}/user-dirs.dirs"

