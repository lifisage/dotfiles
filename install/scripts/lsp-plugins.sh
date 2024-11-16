sudo mkdir -p ~/.local/share/applications/backup/
find /usr/share/applications -type f -name "*lsp_plugins*" -exec mv {} ~/.local/share/applications/backup/ \;
sudo find /usr/share/applications -type f -name "*lsp_plugins*" -exec rm {} \;


