# Node
export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export NVM_DIR="$HOME/.nvm"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
# Go
export GOPATH=$HOME/.local/share/go
# Scala
export SPARK_HOME=$HOME/.local/share/spark

path+=(
	# Misc
	$HOME/.local/bin
	$HOME/.vrd/bin
	# "$HOME/.local/share/flatpak/exports/bin"
	# "$HOME/git/spotifyd/target/release/spotifyd"
	# Node
	$NPM_PACKAGES/bin
	# Rust/Solana
	$HOME/.local/share/solana/install/active_release/bin
	# Go
	$GOROOT/bin:$GOPATH/bin
	# Scala
	$HOME/.local/share/spark/bin
	$HOME/.local/share/coursier/bin
	# Php
	$HOME/.config/composer/vendor/bin
	# Nim
	$HOME/.nimble/bin
)

source "$HOME/.cargo/env"
