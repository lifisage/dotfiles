replace_segment() {
  local file="$1"
  local start_line="$2"
  local end_line="$3"
  local replace="$4"

  local timestamp=$(date +"%Y%m%d_%H:%M:%S")
  local backup_file="${file%.json}_backup_$timestamp.json"
  cp "$file" "$backup_file"
  echo "Created backup for $file"

  local inside_section=false

  while IFS= read -r line; do
    if [[ "$line" == *"$start_line"* ]]; then
      inside_section=true
      echo "$replace"
    fi

    if ! $inside_section; then
      echo "$line"
    fi

    if [[ "$line" == *"$end_line"* ]] && $inside_section; then
      inside_section=false
      fi
  done < "$file" > "$file.tmp"

  mv "$file.tmp" "$file"
  echo "Replacement complete in $file."
}

hyprland_language() {
  local filename=/home/lifisage/.config/waybar/modules.json
  local start_line='"hyprland/language": {'
  local end_line=' },'
  local replace_text='  "hyprland/language": {
    "format-en": "🇬🇧",
    "format-ru": "🇷🇺",
    "format-hy": "🇦🇲"
  },'
  replace_segment "$filename" "$start_line" "$end_line" "$replace_text"
}

hyprland_language

read -p "Press any key to exit.";
