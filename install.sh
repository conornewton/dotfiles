#!/bin/bash

#gets the path to the .dotfiles folder
current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Install vim symbolic links
ln -sf $current_path/vim/vimrc ~/.vimrc

#Install bashrc sym link
ln -sf $current_path/bashrc/bashrc ~/.bashrc 
