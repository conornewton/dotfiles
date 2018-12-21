#! /bin/sh

current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#needs root permissions
cp -s $current_path/*/* /usr/local/bin
