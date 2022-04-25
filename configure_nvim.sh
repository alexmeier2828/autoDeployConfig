#!/bin/bash

VIM_FILES_REPO="https://github.com/alexmeier2828/vimfiles.git"
# TODO figure out how to do this
ABSOLUTE_VIMFILES_PATH=""

if [! -d "vimfiles"]; then 
	git clone $VIM_FILES_REPO
fi

mkdir -p ~/.config/

if [! -L "~/.config/nvim"]; then
	ln -l $ABSOLUTE_VIMFILES_PATH/nvim ~/.config/nvim

else 
	echo "nvim symbolic link already exists, aborting"
	exit 1
fi

echo "nvim setup complete. Remember to run Plug-install on the first use to install plugins"

