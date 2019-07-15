#!/bin/bash

current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

$current_path/bashrc/install.sh
mkdir -p ~/.config/sway
mkdir -p ~/.config/i3
ln -sf $current_path/i3/config ~/.config/sway/config
ln -sf $current_path/i3/config ~/.config/i3/config
$current_path/i3blocks/install.sh
