#!/bin/bash

current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

$current_path/bashrc/install.sh
mkdir -p ~/.config/sway
ln -sf $current_path/sway/config ~/.config/sway/config
$current_path/i3blocks/install.sh
$current_path/bin/install.sh
