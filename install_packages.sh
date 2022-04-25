#!/bin/bash

PACKAGES="neovim cmake"

sudo apt update
sudo apt upgrade -y
sudo apt install -y $PACKAGES

