#wine

echo -e "${GREEN}"
figlet -f smslant "Wine"
echo -e "${NONE}"

Wine=(
    "wine-staging"
    "wine-gecko"
    "wine-mono"
    "winetricks"
    "samba"
    "vulkan-tools"
    "lib32-vulkan-intel"
    "lib32-mesa"
    "lib32-gnutls"
    "lib32-mpg123"
    "lib32-giflib"
    "lib32-pipewire"
    "lib32-pipewire-jack"
    "lutris"
)

Install=(
    "${Wine[@]}"
)

yay -S --needed --noconfirm "${Install[@]}"
