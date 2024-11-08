#user

echo -e "${GREEN}"
figlet -f smslant "User"
echo -e "${NONE}"

Terminal=(
    "kitty"
    "zsh"
    "zsh-completions"
    "oh-my-zsh-git"
    "oh-my-posh"
    "zsh-antidote"
)

Terminal_tools=(
    "pacseek"
    "btop"
    "yazi"
    "ffmpegthumbnailer"
    "btop"
    "fzf"
    "eza"
    "neovim"
    "rclone"
    "github-cli"
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
)

Developtment=(
    "android-studio"
    "visual-studio-code-bin"
    "python-pipx"
)

Install=(
    "${Terminal[@]}"
    "${Terminal_tools[@]}"
    "${ImageEditing[@]}"
    "${Web[@]}"
    "${Tools[@]}"
    "${Developtment[@]}"
    )

yay -S --needed --noconfirm "${Install[@]}";
