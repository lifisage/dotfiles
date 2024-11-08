sudo pacman -S pipewire pipewire-pulse pipewire-alsa pipewire-jack
sudo pacman -S hyprland dolphin waybar rofi
systemctl --user enable --now pipewire pipewire-pulse
systemctl --user status pipewire
systemctl --user status pipewire-pulse
sudo pacman -S pavucontrol