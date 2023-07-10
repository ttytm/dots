# Node
export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export NVM_DIR="$HOME/.nvm"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export PNPM_HOME="/home/turiiya/.local/share/pnpm"
# Go
export GOPATH=$HOME/.local/share/go
# Scala
export SPARK_HOME=$HOME/.local/share/spark

path+=(
	# == Misc
	$HOME/.local/bin
	$HOME/.grd/bin
	# == JS/TS
	# -- Node
	$NPM_PACKAGES/bin
	$PNPM_HOME
	# -- Deno
	$HOME/.deno/bin
	# == Rust/Solana
	$HOME/.local/share/solana/install/active_release/bin
	# == Go
	$GOROOT/bin:$GOPATH/bin
	# == Scala
	$HOME/.local/share/spark/bin
	$HOME/.local/share/coursier/bin
	# == Php
	$HOME/.config/composer/vendor/bin
	# == Nim
	$HOME/.nimble/bin
)

# Node
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# Rust
source "$HOME/.cargo/env"

# Python
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Haskell
[ -f "/home/turiiya/.ghcup/env" ] && source "/home/turiiya/.ghcup/env"
. "$HOME/.cargo/env"
