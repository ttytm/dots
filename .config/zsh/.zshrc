# Ref.: ./.oh-my-zsh/templates/zshrc.zsh-template

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# path to zsh installation
export ZSH="$HOME/.config/zsh/ohmyzsh"
# do not compdump directly into config dir
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

ZSH_CUSTOM=$ZDOTDIR

# Theme  =====================================================================
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins  ===================================================================
plugins=(
	# OMZ plugins
	git # version checking and aliases for everything related to git
	globalias
	vi-mode
	ssh-agent

	# Custom Plugins
	# auto-fortune-cowsay
	alias-tips
	zsh-autocomplete
	zsh-autosuggestions
	zsh-syntax-highlighting
)

KEYTIMEOUT=15
VI_MODE_SET_CURSOR=true
# VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# Source "Defaults" ===========================================================
source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Start Potential Overwrites ==================================================
# Misc
export EDITOR="nvim"
export SUDO_ASKPASS=/usr/bin/ksshaskpass
unset zle_bracketed_paste

# Keymaps
bindkey '^F' autosuggest-accept

# Aliases  ====================================================================
# For a full list of active aliases, run `alias`.

alias zshrc="nvim ~/.config/zsh/.zshrc"
alias ywd="pwd | xclip -selection clipboard" # yank working directory
alias nr="npm run"
alias nrd="npm run dev"
alias anlo="anchor localnet"
alias anrt="anchor run test"
alias bright\?="ddcutil --bus 13 getvcp 10  " # get screen brightness (testing purposes)

# debian based systems
alias sai="sudo apt install"
alias sas="sudo apt search"
alias saup="sudo apt update"
alias sarm="sudo apt purge"
alias sa="sudo apt"

# Ownership
alias own-code="sudo chown -R $(whoami) $(which code)"
alias own-codium="sudo chown -R $(whoami) $(which codium)"

# Apps
alias gnvim="sh ~/opt/scripts/gnvim.sh"
alias kvim="kitty --detach --dump-commands nvim"
alias nvide="neovide"
alias dol="dolphin . & disown"

# Updates (aka poor mans solution to pull updates directly from github releases)
# alias wez-update="cd ~/opt/appimages/ \
# 	&& curl -Lo wezterm.appimage https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu18.04.AppImage \
# 	&& chmod u+x wezterm.appimage"
alias gonvim-update="cd ~/opt/bin/ \
	&& curl -LO https://github.com/akiyosi/goneovim/releases/download/nightly/goneovim-linux.tar.bz2 \
	&& tar -xf goneovim-linux.tar.bz2 \
	&& rm goneovim-linux.tar.bz2"
alias kitty-update="curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin"

# Envs  =======================================================================

# Node
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust
source "$HOME/.cargo/env"

# Python
[ -f /home/turiiya/miniconda3/etc/profile.d/conda.sh ] && source /home/turiiya/miniconda3/etc/profile.d/conda.sh

# Haskell
[ -f "/home/turiiya/.ghcup/env" ] && source "/home/turiiya/.ghcup/env"
