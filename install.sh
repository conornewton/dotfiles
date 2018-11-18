#!/bin/bash

current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $current_path/bashrc/bashrc ~/.bashrc 
mkdir -p ~/.config/i3
ln -sf $current_path/i3-gaps/config ~/.config/i3/config
ln -sf $current_path/Xresources ~/.Xresources
mkdir -p ~/.config/sway
ln -sf $current_path/sway/config ~/.config/sway/config

$current_path/i3blocks/install.sh
$current_path/bin/install.sh
$current_path/qutebrowser/install.sh
