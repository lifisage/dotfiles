filename=$(basename -- "$1")
extension="${filename##*.}"
echo "$extension"
kitty --title "floating_kitty" mimeopen -d .$extension
