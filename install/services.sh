#start services

#audio
systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire-pulse.socket
systemctl --user enable --now wireplumber.service

#sddm, tlp and paccache
sudo systemctl enable sddm tlp paccache.timer earlyoom
