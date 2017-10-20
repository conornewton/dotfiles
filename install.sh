#!/bin/bash

#gets the path to the .dotfiles folder
current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Install bashrc sym link
ln -sf $current_path/bashrc/bashrc ~/.bashrc 

#Install vim symbolic link
ln -sf $current_path/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/autoload

#sym link colorscheme
ln -sf $current_path/vim/colors/badwolf.vim ~/.vim/colors/badwolf.vim
#sym link pathogen (plugin manager)
ln -sf $current_path/vim/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

#install vim plugins
cd ~/.vim/bundle
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/idris-hackers/idris-vim.git
git clone https://github.com/neovimhaskell/haskell-vim.git

#Install i3 dot files
mkdir -p ~/.config/i3
ln -sf $current_path/i3/config ~/.config/i3/config
