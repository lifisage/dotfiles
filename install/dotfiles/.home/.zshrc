#fastfetch and color sceme
cat ~/.cache/wal/sequences
fastfetch --config examples/13


#setopts
setopt interactivecomments
setopt sharehistory
setopt appendhistory
setopt autocd
setopt autopushd

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


#inits
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"
source <(fzf --zsh)


#plugins
source ~/.cache/wal/colors.sh
source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.zsh/sudo/sudo.plugin.zsh

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
alias pacunlock='rm -i /var/lib/pacman/db.lck'
alias yalist='expac --timefmt="%Y-%m-%d %H:%M:%S" "%b\t%n" | grep -F "$(pacman -Qqe)" | sort'
