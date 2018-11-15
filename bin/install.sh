#! /bin/sh

current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.local/bin

cp -s $current_path/*/* ~/.local/bin/
