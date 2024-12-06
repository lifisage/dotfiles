DATE=$(date +%Y%m%d_%H%M%S)
DOTFILES=()
MAIN=()

for item in ./dotfiles/.config/*; do
  DOTFILES+=("$(basename "$item")")
done

for file in ./dotfiles/.home/.*; do
  MAIN+=("$(basename "$file")")
done

printf "%s\n" ".config" " " "${DOTFILES[@]}" " " "~" " " "${MAIN[@]}" >./dotfiles/"$DATE".txt

backup_file() {
  local source="$1/$2"
  local target="./dotfiles/$3/"
  if [ -e "$source" ]; then
    mkdir -p "$(dirname "$target")"
    rsync -av --delete "$source" "$target"
    echo "Backed up: $2"
  fi
}

# Backup main files
for item in "${MAIN[@]}"; do
  backup_file "$HOME" "$item" ".home"
done

# Backup .config files
for file in "${DOTFILES[@]}"; do
  backup_file "$HOME/.config" "$file" ".config"
done

# Upload git
if gum confirm "Upload to git?"; then
  git add *
  git commit -m "Backup $(date +'%Y-%m-%d %H:%M:%S')"
  git push
fi
