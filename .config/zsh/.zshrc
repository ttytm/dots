# Ref.: ~/.config/zsh/ohmyzsh/templates/zshrc.zsh-template
ZSH_CUSTOM=$ZDOTDIR
eval "$(starship init zsh)"

# Plugins  ====================================================================
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

# Envs  =======================================================================

# Node
source /usr/share/nvm/init-nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# Rust
source "$HOME/.cargo/env"

# OCaml
eval $(opam env)

# Python
[ -f /home/turiiya/miniconda3/etc/profile.d/conda.sh ] && source /home/turiiya/miniconda3/etc/profile.d/conda.sh

# Haskell
[ -f "/home/turiiya/.ghcup/env" ] && source "/home/turiiya/.ghcup/env"

# Bun completions
[ -s "/home/t/.bun/_bun" ] && source "/home/t/.bun/_bun"
