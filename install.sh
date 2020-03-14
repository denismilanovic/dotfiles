#!/bin/sh

config_dir=$(readlink -f $(dirname $0))

function mklink() 
{
	source=$1;
	target=$2;
	mv ${target}{,.bak}
	ln -s ${source} ${target}
}

mklink ${config_dir}/ ${HOME}/.config
mklink ${HOME}/local ${HOME}/.local
mklink ${config_dir}/bashrc ${HOME}/.bashrc
mklink ${config_dir}/profile ${HOME}/.profile
mklink ${config_dir}/bash_profile ${HOME}/.bash_profile
mklink ${config_dir}/tmux.conf ${HOME}/.tmux.conf
mklink ${config_dir}/vim ${HOME}/.vim
mklink ${config_dir}/lesskey ${HOME}/.lesskey
