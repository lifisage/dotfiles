#user

echo -e "${GREEN}"
figlet -f smslant "User"
echo -e "${NONE}"

Terminal=(
    "kitty"
    "zsh"
    "oh-my-zsh-git"
    "zsh-antidote"
)

Terminal_tools=(
    "fastfetch"
    "rsync"
    "pacseek"
    "btop"
    "yazi"
    "ffmpegthumbnailer"
    "btop"
    "fzf"
    "eza"
    "ripgrep"
    "neovim"
    "github-cli"
    "zoxide"
    "lazygit"
    "p7zip"
    "zip"
    "unzip"
    "fd"
    "ueberzugpp"
    "perl-file-mimeinfo"
    "handlr-regex"
)

ImageEditing=(
    "gimp"
    "gimp-plugin-gmic"
    "aseprite"
)

Web=(
    "floorp-bin"
    "spotify-launcher"
    "discord"
    "telegram-desktop"
    "obsidian"
    "qbittorrent"
    "stremio"
)

Tools=(
    "localsend-bin"
    "rustdesk-bin"
    "qalculate-qt"
    "baobab"
    "bleachbit"
    "copyq"
    "eog"
    "tesseract"
    "tesseract-data-eng"
    "tesseract-data-rus"
    "zathura"
    "zathura-pdf-mupdf"
)

Development=(
    "android-studio"
    "visual-studio-code-bin"
)

Languages=(
    "python-pipx"
    "rust"
    "cargo"
    "nodejs"
    "luarocks"
)

Install=(
    "${Terminal[@]}"
    "${Terminal_tools[@]}"
    "${Web[@]}"
    "${Tools[@]}"
    "${Languages[@]}"
)

yay -S --needed --noconfirm "${Install[@]}";

if gum confirm "Do you want to install dev apps";then
    yay -S --needed --noconfirm "${Development[@]}"
fi

if gum confirm "Do you want to install imageiditing apps";then
    yay -S --needed --noconfirm "${ImageEditing[@]}"
fi
