#!/bin/bash

#gets the path to the .dotfiles folder
current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Install bashrc sym link
ln -sf $current_path/bashrc/bashrc ~/.bashrc 

#Vim
ln -sf $current_path/vim/vimrc ~/.vimrc

#if the git repository does not exist clone it
#otherwise update it
function cloneorupdate {
    ##these are called parameter extensions
    last=${1##*/} # removes everything before /
    bare=${last%%.git} # keep everthing before .git
    if [ ! -d "$bare" ] ; then
        git clone "$1" "$bare"
    else
        cd "$bare"
        git pull "$1"
    fi
}

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
cloneorupdate https://github.com/vim-syntastic/syntastic.git
cloneorupdate https://github.com/vim-syntastic/syntastic.git
cloneorupdate https://github.com/idris-hackers/idris-vim.git
cloneorupdate https://github.com/neovimhaskell/haskell-vim.git
cloneorupdate https://github.com/leafgarland/typescript-vim.git
cloneorupdate https://github.com/tpope/vim-pathogen.git

mkdir -p ~/.vim/colors
cd ~/.vim/colors

curl https://raw.githubusercontent.com/KietaNakamura/neodark.vim/master/colors/neodark.vim >> neodark.vim

#Install i3 dot files
mkdir -p ~/.config/i3
ln -sf $current_path/i3-gaps/config ~/.config/i3/config

#instal i3 blocks dot files
mkdir -p ~/.i3blocks/scripts

ln -sf $current_path/i3blocks/i3blocks.conf ~/.i3blocks.conf
ln -sf $current_path/i3blocks/scripts/battery.py ~/.i3blocks/scripts/battery.py
ln -sf $current_path/i3blocks/scripts/volume-pulseaudio ~/.i3blocks/scripts/volume-pulseaudio
ln -sf $current_path/i3blocks/scripts/wifi.py ~/.i3blocks/scripts/wifi.py

#install terminator dotfiles
mkdir -p ~/.config/terminator
ln -sf $current_path/terminator/config ~/.config/terminator/config

#install .Xresources
ln -sf $current_path/Xresources ~/.Xresources

#install .xmonad config
ln -sf $current_path/xmonad/xmonad.hs ~/.xmonad/xmonad.hs

#install xmobar config
ln -sf $current_path/xmonad/xmobarrc ~/.xmobarrc

xmonad --recompile
