#fonts

echo -e "${GREEN}"
figlet -f smslant "Fonts"
echo -e "${NONE}"

Fonts=(
    "adobe-source-han-sans-jp-fonts"
    "noto-fonts"
    "noto-fonts-cjk"
    "noto-fonts-emoji"
    "noto-fonts-extra"
    "otf-font-awesome"
    "ttf-font-awesome"
    "ttf-fira-sans"
    "ttf-fira-code"
    "ttf-firacode-nerd"
    "ttf-ms-win11-auto"
)

yay -S --needed --noconfirm "${Fonts[@]}"
