
fastfetch --config examples/13

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zshrc_folder/aliases
source ~/.zshrc_folder/exports
source ~/.zshrc_folder/plugins
source ~/.zshrc_folder/yazi
source /usr/share/zsh-antidote/antidote.zsh
export ZSH_COMPDUMP=~/.cache/zsh/.zcompdump-$HOST

#autostart
cat ~/.cache/wal/sequences
#zsh-history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#Inits
export EDITOR=nvim
eval "$(zoxide init zsh)"
source <(fzf --zsh)
source /usr/share/oh-my-zsh/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
antidote load

[[ -f /home/lifisage/.dart-cli-completion/zsh-config.zsh ]] && . /home/lifisage/.dart-cli-completion/zsh-config.zsh || true

# Created by `pipx` on 2024-11-10 18:01:47
export PATH="$PATH:/home/lifisage/.local/bin"

