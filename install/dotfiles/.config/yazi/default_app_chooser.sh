filename=$(basename -- "$1")
extension="${filename##*.}"
kitty --title "floating_kitty" mimeopen -d .$extension
