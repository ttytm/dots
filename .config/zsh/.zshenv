## Misc
export TERM="${TERM:-xterm}"
export EDITOR="nvim"
export SUDO_ASKPASS=$(which ksshaskpass)
export ZSH_COMPDUMP=$HOME/.cache/zsh/.zcompdump # Do not compdump directly into zsh config dir
export VPM_NO_INCREMENT=1 # Disable download count incrementing on vpm.vlang.io (e.g., mostly while running `v install` during tests)

## Application Variables
export FX_SHOW_SIZE=true
export ZED_WINDOW_DECORATIONS=server

path+=(
	$HOME/.rod/bin
	$HOME/.modular/bin
	$HOME/.local/share/solana/install/active_release/bin
	$HOME/.turso
)
