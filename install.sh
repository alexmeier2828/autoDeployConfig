#!/bin/bash

scripts_dir="$(pwd)"

#### Breakout Scripts ###### 

source $scripts_dir/install_packages.sh
source $scripts_dir/configure_nvim.sh

#### RC setup ##############

if [ ! -f $scripts_dir/MODIFIED_RC_FILES ] ; then
	touch "$scripts_dir/MODIFIED_RC_FILES"

	# make backup
	cp ~/.bashrc bashrc.bak

	echo "export auto_config_dir=\"$scripts_dir\"" >> ~/.bashrc
	cat $scripts_dir/my_rc.sh >> ~/.bashrc
fi
