#fastfetch
fastfetch --config examples/13


#setopts
setopt correct
setopt interactivecomments
setopt sharehistory
setopt appendhistory


#enable history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000


#yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
cat ~/.cache/wal/sequences
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


#aliases
alias c='clear'
alias ls='eza -a --icons=always'
alias ll='eza -al --icons=always'
alias lt='eza -a --tree --level=1 --icons=always'
alias shutdown='systemctl poweroff'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias pacin='sudo pacman -S'
alias yain='yay -S'
alias pacupg='sudo pacman -Syu'
alias yaupg='yay -Syu'
alias pacrem='sudo pacman -Rns'
alias yarem='yay -Rns'
