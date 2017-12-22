#!/bin/bash

#gets the path to the .dotfiles folder
current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Install bashrc sym link
ln -sf $current_path/bashrc/bashrc ~/.bashrc 

ln -sf $current_path/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/autoload

#sym link pathogen (plugin manager)
#TODO: change this to download it aswell
ln -sf $current_path/vim/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

#download vim plugins
cd ~/.vim/bundle
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/idris-hackers/idris-vim.git
git clone https://github.com/neovimhaskell/haskell-vim.git

#Install i3 dot files
mkdir -p ~/.config/i3
ln -sf $current_path/i3-gaps/config ~/.config/i3/config

#instal i3 blocks dot files
mkdir -p ~/.i3blocks/scripts

ln -sf $current_path/i3blocks/i3blocks.conf ~/.i3blocks.conf
ln -sf $current_path/i3blocks/scripts/battery.py ~/.i3blocks/scripts/battery.py
ln -sf $current_path/i3blocks/scripts/volume-pulseaudio ~/.i3blocks/scripts/volume-pulseaudio
ln -sf $current_path/i3blocks/scripts/wifi.py ~/.i3blocks/scripts/wifi.py
