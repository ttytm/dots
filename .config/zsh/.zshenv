## Misc
export EDITOR="nvim"
export SUDO_ASKPASS=/usr/bin/ksshaskpass
export ZSH_COMPDUMP=$HOME/.cache/zsh/.zcompdump # Do not compdump directly into zsh config dir
export VPM_NO_INCREMENT=1 # Disable download count incrementing on vpm.vlang.io (e.g., mostly while running `v install` during tests)

## Application Variables
export FX_SHOW_SIZE=true
export ZED_WINDOW_DECORATIONS=server

path+=(
	# Misc
	$HOME/.rod/bin
	# Mojo
	$HOME/.modular/bin
	# Rust/Solana
	$HOME/.local/share/solana/install/active_release/bin
	# Turso
	$HOME/.turso
)
