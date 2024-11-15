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

Bluetooth=(
    "blueman"
    "bluez"
    "bluez-libs"
    "bluez-utils"
)

System=(
    "os-prober"
    "nm-connection-editor"
    "brightnessctl"
    "sddm"
    "fuse2"
)

Install=(
    "${Audio[@]}"
    "${Battery[@]}"
    "${Bluetooth[@]}"
    "${System[@]}"
)

sudo pacman -S --needed --noconfirm  "${Install[@]}"
