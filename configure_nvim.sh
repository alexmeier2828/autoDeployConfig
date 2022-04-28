#!/bin/bash

get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

VIM_FILES_REPO="https://github.com/alexmeier2828/vimfiles.git"
# TODO figure out how to do this

if [ ! -d "vimfiles" ]; then 
	git clone $VIM_FILES_REPO
fi

ABSOLUTE_VIMFILES_PATH=$(get_abs_filename ./vimfiles/)

mkdir  ~/.config

if [ ! -L "~/.config/nvim" ]; then
	cd ~/.config/
	ln -s $ABSOLUTE_VIMFILES_PATH/nvim nvim

else 
	echo "nvim symbolic link already exists, aborting"
	exit 1
fi

echo "nvim setup complete. Remember to run Plug-install on the first use to install plugins"
cd 

