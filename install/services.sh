#start services

#audio
systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire-pulse.socket
systemctl --user enable --now wireplumber.service

#sddm
sudo systemctl enable sddm tlp
