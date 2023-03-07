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
	# zsh-vi-mode # omz's internal vi-mode seems to be better atm
)

# zvm_config() {
# 	ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
# 	ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK
# 	ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# 	ZVM_VI_EDITOR=nvim
# 	# cursor styles
# 	#local ncur=$(zvm_cursor_style $ZVM_NORMAL_MODE_CURSOR)
# 	#local icur=$(zvm_cursor_style $ZVM_INSERT_MODE_CURSOR)
# }

KEYTIMEOUT=10 
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

alias zshcfg="nvim ~/.config/zsh/.zshrc"
alias ywd="pwd | xclip -selection clipboard" # yank working directory
alias nrd="npm run dev"
alias nrt="npm run test"
alias anlo="anchor localnet"
alias anrt="anchor run test"
alias bright\?="ddcutil --bus 13 getvcp 10  " # get screen brightness (testing purposes)

# debian based systems
# alias sai="sudo apt install"
# alias sas="sudo apt search"
# alias saup="sudo apt update"

# Ownership
alias own-code="sudo chown -R $(whoami) /usr/share/code-insiders"
alias own-codium="sudo chown -R $(whoami) /opt/vscodium-bin"

# Apps
alias code="codium"
alias gnvim="sh ~/opt/scripts/gnvim.sh"
alias kvim="kitty --detach --dump-commands nvim"
alias nvide="neovide"

# Updates (aka poor mans solution to pull updates directly from github releases)
# alias nvim-update="cd ~/opt/appimages/ \
	# && curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
	# && chmod u+x nvim.appimage"
# alias wez-update="cd ~/opt/appimages/ \
# 	&& curl -Lo wezterm.appimage https://github.com/wez/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu18.04.AppImage \
# 	&& chmod u+x wezterm.appimage"
# alias logseq-update='cd ~/opt/appimages/ \
# && echo "downloading logseq latest release..." \
# && curl -s https://api.github.com/repos/logseq/logseq/releases/latest \
# | grep "browser_download_url.*AppImage" \
# | cut -d : -f 2,3 \
# | tr -d \" \
# | wget -O logseq.appimage -qi - --show-progress \
# && echo "completed." \
# && chmod u+x logseq.appimage'
# alias siyuan-update='cd ~/opt/appimages/ \
# && echo "downloading siyuan latest release..." \
# && curl -s https://api.github.com/repos/siyuan-note/siyuan/releases/latest \
# | grep "browser_download_url.*AppImage" \
# | cut -d : -f 2,3 \
# | tr -d \" \
# | wget -O siyuan.appimage -qi - --show-progress \
# && echo "completed." \
# && chmod u+x siyuan.appimage'
alias kitty-update="cd ~/opt/bin/ \
	&& curl -LO https://github.com/kovidgoyal/kitty/releases/download/nightly/kitty-nightly-x86_64.txz \
	&& tar Jvxf kitty-nightly-x86_64.txz -C ./kitty \
	&& rm kitty-nightly-x86_64.txz"
alias gonvim-update="cd ~/opt/bin/ \
	&& curl -LO https://github.com/akiyosi/goneovim/releases/download/nightly/goneovim-linux.tar.bz2 \
	&& tar -xf goneovim-linux.tar.bz2 \
	&& rm goneovim-linux.tar.bz2"

# $PATH  ======================================================================
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/neovim/bin:$PATH
export PATH=$HOME/.config/composer/vendor/bin/:$PATH
# export PATH="$HOME/git/spotifyd/target/release/spotifyd:$PATH"
# export PATH="$HOME/.local/share/flatpak/exports/bin:$PATH"

# Node
export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$PATH:$NPM_PACKAGES/bin:$PATH"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # load nvm bash_completion

# Rust
source "$HOME/.cargo/env"
export PATH=$HOME/.local/share/solana/install/active_release/bin:$PATH

# Scala
export SPARK_HOME=$HOME/.local/share/spark
export PATH=$HOME/.local/share/spark/bin:$PATH
export PATH=$PATH:$HOME/.local/share/coursier/bin

# Go
export GOPATH=$HOME/.local/share/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Nim
export PATH=$HOME/.nim/nim-1.6.10/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH

# Python
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Haskell
[ -f "/home/turiiya/.ghcup/env" ] && source "/home/turiiya/.ghcup/env" 
