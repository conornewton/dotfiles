current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.i3blocks/scripts

ln -sf $current_path/i3blocks.conf ~/.i3blocks.conf
ln -sf $current_path/scripts/battery.py ~/.i3blocks/scripts/battery.py
ln -sf $current_path/scripts/volume-pulseaudio ~/.i3blocks/scripts/volume-pulseaudio
ln -sf $current_path/scripts/wifi-wpa-supplicant.sh ~/.i3blocks/scripts/wifi-wpa-supplicant.sh
