#enable services
./services.sh

#dns to cloudflare
./scripts/wifi.sh

#flutter version managment
./scripts/fvm.sh

#easyeffect presets
./scripts/easyeffects.sh

#hide lsp-plugins from rofi
./scripts/lsp-plugins.sh

#grub theme
./scripts/grub.sh

#sddm
./scripts/sddm.sh

#fix dolphin
./scripts/dolphin.sh

#enable colors
mkdir ~/wallpaper
rsync -a --delete wallpaper/ ~/wallpaper/
./pywal.sh

#change shell to zsh
chsh -s $(which zsh)
