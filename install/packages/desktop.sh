echo -e "${GREEN}"
figlet -f smslant "Desktop"
echo -e "${NONE}"

# Hyprland packages
Hyprland=(
    "hyprland"
    "hyprcursor"
    "hypridle"
    "hyprlock"
    "hyprpaper"
    "hyprpicker"
    "hyprshade"
)

# Needed by Hyprland
Hyprland_Deps=(
    "dolphin"
    "xdg-desktop-portal-hyprland"
    "xdg-desktop-portal-gtk"
    "archlinux-xdg-menu"
    "libnotify"
    "dunst"
    "cliphist"
    "dialog"
    "polkit-gnome"
)

# Qt5 and Qt6 Wayland packages
Qt_Wayland=(
    "qt5-graphicaleffects"
    "qt5-wayland"
    "qt5-base"
    "qt5ct"
    "qt6-wayland"
    "qt6-base"
    "qt6ct"
)

# Color-related packages
Theme=(
    "nwg-look"
    "python-pywal"
    "breeze"
    "bibata-cursor-theme"
    "papirus-icon-theme"
)

#Desktop-related packages
Desktop=(
    "waypaper"
    "wlogout"
    "libnotify"
    "swww"
)

# Bar-related packages
Bars=(
    "waybar"
    "aylurs-gtk-shell"
)

# Rofi packages
Rofi=(
    "rofi-wayland"
    "rofimoji"
    "wtype"
)

#Screenshot-related packages
Screenshots=(
    "grim"
    "slurp"
    "grimblast-git"
    "obs-studio"
)

#Install
Install=(
    "${Hyprland[@]}"
    "${Hyprland_Deps[@]}"
    "${Qt_Wayland[@]}" $()
    "${Theme[@]}"
    "${Desktop[@]}"
    "${Bars[@]}"
    "${Rofi[@]}"
    "${Screenshots[@]}"
)

# Install packages
yay -S --needed --noconfirm "${Install[@]}"
