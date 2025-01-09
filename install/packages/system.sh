#system

echo -e "${GREEN}"
figlet -f smslant "System"
echo -e "${NONE}"

Audio=(
    "pipewire"
    "pipewire-pulse"
    "pipewire-alsa"
    "pipewire-jack"
    "pipewire-audio"
    "sof-firmware"
    "wireplumber"
    "pavucontrol"
    "easyeffects"
    "lsp-plugins"
)

Battery=(
    "tlp"
    "tlp-rdw"
)

Bluetooth_and_Network=(
    "dnscrypt-proxy"
    "iwd"
    "blueman"
    "bluez"
    "bluez-libs"
    "bluez-utils"
)

System=(
    "earlyoom"
    "os-prober"
    "nm-connection-editor"
    "brightnessctl"
    "sddm"
    "xorg-xsetroot"
    "fuse2"
    "mesa-utils"
    "alsa-utils"
    "pacman-contrib"
    "perl-file-mimeinfo"
    "libva-intel-driver"
)

Install=(
    "${Audio[@]}"
    "${Battery[@]}"
    "${Bluetooth_and_Network[@]}"
    "${System[@]}"
)

yay -S --needed --noconfirm "${Install[@]}"
