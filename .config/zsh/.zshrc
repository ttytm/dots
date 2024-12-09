# Ref.: ~/.config/zsh/ohmyzsh/templates/zshrc.zsh-template
ZSH_CUSTOM=$ZDOTDIR
eval "$(starship init zsh)"

## Plugins ====================================================================
plugins=(
	# OMZ
	git
	globalias
	mise
	vi-mode
	ssh-agent
	# Custom
	alias-tips
	zsh-autocomplete
	zsh-autosuggestions
	zsh-completions
	zsh-syntax-highlighting
)

KEYTIMEOUT=15
VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

## Source OMZ to load "defaults" and plugins, then start potential "overwrites"
source $ZSH/oh-my-zsh.sh

## General ====================================================================

unset zle_bracketed_paste
bindkey '^F' autosuggest-accept

## Aliases ====================================================================
# For a full list of active aliases, run `alias`

# Config
alias zshrc="$EDITOR ~/.config/zsh/.zshrc"
alias kitrc="$EDITOR ~/.config/kitty/kitty.conf"

# Devtools
alias t='projectdo test'
alias r='projectdo run'
alias b='projectdo build'
alias p='projectdo tool'
alias anlo="anchor localnet"
alias anrt="anchor run test"
alias c3="c3c"

# Programs
alias n="nvim"
alias kvim="kitty --detach --dump-commands nvim"
alias slumb='slumber -f ~/.config/slumber/slumber.yml'

# Utilities
alias l="lsd -lahg"
alias open="xdg-open"
alias fjq='true | fzf --preview-window="border-none" --preview="jq -C {q} < *.json"'
alias ywd="pwd | xclip -selection clipboard" # Yank working directory
alias own-code="sudo chown -R $(whoami) $(which code)"
alias own-codium="sudo chown -R $(whoami) $(which codium)"

# Debian-based
if [ -f /etc/debian_version ]; then
	# APT commands
	alias sai="sudo apt install"
	alias sas="sudo apt search"
	alias saup="sudo apt update"
	alias sarm="sudo apt purge"
	alias sa="sudo apt"
	#
	alias bat="batcat"
fi

## Environment Extensions =====================================================

# Mise
eval "$($HOME/.local/bin/mise activate zsh)"

# Rust
source "$HOME/.cargo/env"

## Auto Completions ===========================================================

# Bun
command -v bun > /dev/null 2>&1 && source <(eval "bun completions | tee") # Dynamically sourced
