echo -e "${GREEN}"
figlet -f smslant "Pywal"
echo -e "${NONE}"

if [ ! -f ~/.cache/wal/colors-hyprland.conf ]; then
    wal -ei ~/wallpaper/default.png
    echo ":: Pywal and templates activated."
    echo ""
else
    echo ":: Pywal already activated."
    echo ""
fi