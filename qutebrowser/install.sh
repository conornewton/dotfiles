#! /bin/bash

current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.config/qutebrowser
ln -sf $current_path/config.py ~/.config/qutebrowser/config.py
