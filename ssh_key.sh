#!/bin/bash

if [ ! -f ~/git ]; then
	ssh-keygen -f ~/git
fi

eval $(ssh-agent)
ssh-add ~/git
