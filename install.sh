#!/bin/bash

#gets the path to the .dotfiles folder
current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#Install bashrc sym link
ln -sf $current_path/bashrc/bashrc ~/.bashrc 

#vim
./vim/install.sh

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

mkdir -p ~/.xmonad
#install .xmonad config
ln -sf $current_path/xmonad/xmonad.hs ~/.xmonad/xmonad.hs

#install xmobar config
ln -sf $current_path/xmonad/xmobarrc ~/.xmobarrc

#install sway config
ln -sf $current_path/sway/config ~/.config/sway/config
