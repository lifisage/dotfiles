BACKUP_DIR="."
BACKUP_REPO="$BACKUP_DIR/backup"
DATE=$(date +%Y%m%d_%H%M%S)

DOTFILES=(
".floorp"
".config"
"dotfiles"
)

backup_file() {
    local source="$HOME/$1"
    local target="$BACKUP_REPO"
    
    if [ -e "$source" ]; then
        mkdir -p "$(dirname "$target")"
        cp -R --preserve=mode,ownership,timestamps "$source" "$target"
        echo "Backed up: $1"
    fi
}

for file in "${DOTFILES[@]}"; do
    backup_file "$file"
done

