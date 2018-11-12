#! /bin/bash

current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.config/termite
ln -sf $current_path/config-transparent ~/.config/termite/config
ln -sf $current_path/config-scratchpad ~/.config/termite/config-scratchpad
