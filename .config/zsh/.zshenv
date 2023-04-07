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
	$HOME/.local/bin
	# $HOME/.local/share/neovim/bin
	$HOME/.config/composer/vendor/bin
	$HOME/.vrd/bin
	# "$HOME/git/spotifyd/target/release/spotifyd"
	# "$HOME/.local/share/flatpak/exports/bin"
	# Node
	$NPM_PACKAGES/bin
	# Rust
	$HOME/.local/share/solana/install/active_release/bin
	# Scala
	$HOME/.local/share/spark/bin
	$HOME/.local/share/coursier/bin
	# Go
	$GOROOT/bin:$GOPATH/bin
	# Nim
	$HOME/.nimble/bin
)

source "$HOME/.cargo/env"
