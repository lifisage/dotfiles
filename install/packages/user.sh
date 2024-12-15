#user

echo -e "${GREEN}"
figlet -f smslant "User"
echo -e "${NONE}"

Languages=(
    "python-pipx"
    "python-pip"
    "rust"
    "cargo"
    "nodejs"
    "npm"
    "luarocks"
    "jdk-openjdk"
    "jdk17-openjdk"
    "jdk21-openjdk"
    "dotnet-sdk"
)

Terminal=(
    "kitty"
    "zsh"
    "starship"
)

Terminal_addons=(
    "ffmpegthumbnailer"
    "fzf"
    "eza"
    "ripgrep"
    "zoxide"
    "fd"
    "ueberzugpp"
    "thefuck"
)

Terminal_tools=(
    "fastfetch"
    "btop"
    "yazi"
    "neovim"
    "handlr-regex"
)

File_tools=(
    "rsync"
    "rclone"
    "p7zip"
    "zip"
    "unzip"
)

Git=(
    "github-cli"
    "lazygit"
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
    "thunderbird"
)

Tools=(
    "wev"
    "wget"
    "loupe"
    "yt-dlp"
    "gucharmap"
    "localsend-bin"
    "rustdesk-bin"
    "qalculate-qt"
    "syncthing"
    "baobab"
    "udiskie"
    "bleachbit"
    "copyq"
    "resources"
    "xournalpp"
    "scrcpy"
    "man-db"
    "man-pages"
    "expac"
)

Development=(
    "android-studio"
    "visual-studio-code-bin"
    "android-tools"
)

Install=(
    "${Terminal[@]}"
    "${Terminal_addons[@]}"
    "${Terminal_tools[@]}"
    "${File_tools[@]}"
    "${Git[@]}"
    "${Web[@]}"
    "${Tools[@]}"
    "${Languages[@]}"
)

yay -S --needed --noconfirm "${Install[@]}"

if gum confirm "Do you want to install dev apps"; then
    yay -S --needed --noconfirm "${Development[@]}"
fi

if gum confirm "Do you want to install imageiditing apps"; then
    yay -S --needed --noconfirm "${ImageEditing[@]}"
fi
