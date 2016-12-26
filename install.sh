#!/bin/bash

current_path=$(pwd)

#Install vim symbolic links
ln -sf $current_path/vim/vimrc ~/.vimrc

#Install bashrc sym link
ln -sf $current_path/bashrc/bashrc ~/.bashrc 
