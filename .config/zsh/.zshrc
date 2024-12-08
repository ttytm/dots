# Ref.: ./.oh-my-zsh/templates/zshrc.zsh-template


# path to zsh installation
export ZSH="$HOME/.config/zsh/ohmyzsh"
# do not compdump directly into config dir
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

ZSH_CUSTOM=$ZDOTDIR
eval "$(starship init zsh)"

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
	zsh-completions
	zsh-syntax-highlighting
)

KEYTIMEOUT=15
VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# Source "Defaults" ===========================================================
source $ZSH/oh-my-zsh.sh

# Start Potential Overwrites ==================================================
# Misc
export EDITOR="nvim"
export SUDO_ASKPASS=/usr/bin/ksshaskpass
unset zle_bracketed_paste

# Keymaps
bindkey '^F' autosuggest-accept

# Aliases  ====================================================================

# For a full list of active aliases, run `alias`.
alias anlo="anchor localnet"
alias anrt="anchor run test"
alias fjq='true | fzf  --preview-window="border-none" --preview="jq -C {q} < *.json"'
alias kvim="kitty --detach --dump-commands nvim"
alias kitrc="nvim ~/.config/kitty/kitty.conf"
alias kw="kwrite"
alias l="lsd -lahg"
alias n="nvim"

alias t='projectdo test'
alias r='projectdo run'
alias b='projectdo build'
alias p='projectdo tool'

alias slumb='slumber -f ~/.config/slumber/slumber.yml'
alias sp="spawnc"
alias open="xdg-open"
# alias own-code="sudo chown -R $(whoami) $(which code)"
alias own-code="sudo chown -R $(whoami) /opt/visual-studio-code"
alias own-codium="sudo chown -R $(whoami) $(which codium)"
alias ywd="pwd | xclip -selection clipboard" # yank working directory
alias zshrc="nvim ~/.config/zsh/.zshrc"
alias c3="c3c"


# Debian based systems.
if [ -f /etc/debian_version ]; then
	# APT commands.
	alias sai="sudo apt install"
	alias sas="sudo apt search"
	alias saup="sudo apt update"
	alias sarm="sudo apt purge"
	alias sa="sudo apt"

	alias bat="batcat"
fi

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
source /usr/share/nvm/init-nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# Rust
source "$HOME/.cargo/env"

# Python
[ -f /home/turiiya/miniconda3/etc/profile.d/conda.sh ] && source /home/turiiya/miniconda3/etc/profile.d/conda.sh

# Haskell
[ -f "/home/turiiya/.ghcup/env" ] && source "/home/turiiya/.ghcup/env"

# VMR
[ -z "$VM_DISABLE" ] && source ~/.vmr/vmr.sh

# V
# compdef v
# _v() {
# 	local src
# 	# Send all words up to the word the cursor is currently on
# 	src=$(/home/turiiya/Dev/vlang/v/v complete zsh $(printf "%s\n" ${(@)words[1,$CURRENT]}))
# 	if [[ $? == 0 ]]; then
# 		eval ${src}
# 		#echo ${src}
# 	fi
# }
# compdef _v v

# bun completions
[ -s "/home/t/.bun/_bun" ] && source "/home/t/.bun/_bun"

eval $(opam env)
