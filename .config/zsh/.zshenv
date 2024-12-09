## Misc
export EDITOR="nvim"
export PAGER=bat
export SUDO_ASKPASS=/usr/bin/ksshaskpass
export ZSH_COMPDUMP=$HOME/.cache/zsh/.zcompdump # do not compdump directly into zsh config dir

## Application Variables
export FX_SHOW_SIZE=true
export ZED_WINDOW_DECORATIONS=server

## Devtools
# JVM (Java, Scala etc.)
export JAVA_HOME=$(realpath $(which java) | sed 's/\/bin\/.*//')
# Onyx
export ONYX_PATH=$HOME/.onyx
# V
export VPM_NO_INCREMENT=1

path+=(
	# Misc
	$HOME/.rod/bin
	# Mojo
	$HOME/.modular/bin
	# Onyx
	$ONYX_PATH/bin
	# Php
	$HOME/.config/composer/vendor/bin
	# Rust/Solana
	$HOME/.local/share/solana/install/active_release/bin
	# Scala
	$HOME/.local/share/spark/bin
	$HOME/.local/share/coursier/bin
	# Turso
	$HOME/.turso
)
