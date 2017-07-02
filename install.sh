#!/bin/bash

#gets the path to the .dotfiles folder
current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Install vim symbolic link
ln -sf $current_path/vim/vimrc ~/.vimrc

#Install bashrc sym link
ln -sf $current_path/bashrc/bashrc ~/.bashrc 

mkdir -p ~/.vim/colors

ln -sf $current_path/vim/colors/badwolf.vim ~/.vim/colors/badwolf.vim

#Install tmux symbolic link
ln -sf $current_path/tmux/tmux.conf ~/.tmux.conf
