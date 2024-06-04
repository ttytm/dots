# == JS/TS
export BUN_INSTALL="$HOME/.bun"
export NPM_PACKAGES="${HOME}/.npm-packages"
export NVM_DIR="$HOME/.nvm"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
# == Scala
export SPARK_HOME=$HOME/.local/share/spark
# == LLVM
# export PATH=$HOME/Git/llvm-17/build/bin/:$PATH
# == V
export VPM_NO_INCREMENT=1
# == Mojo
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo

path+=(
	# == Misc
	$HOME/.local/bin
	$HOME/.grd/bin
	$HOME/.vm/bin
	# == JS/TS
	$BUN_INSTALL/bin
	$NPM_PACKAGES/bin
	$HOME/.deno/bin
	# == Nim
	$HOME/.nimble/bin
	$HOME/Nextcloud/Dev/Nim/nim/bin
	# == Php
	$HOME/.config/composer/vendor/bin
	# == Scala
	$HOME/.local/share/spark/bin
	$HOME/.local/share/coursier/bin
	# == Rust/Solana
	$HOME/.local/share/solana/install/active_release/bin
	# == V
	$HOME/.config/v-analyzer/bin
	# == Mojo
	$HOME/.modular/pkg/packages.modular.com_mojo/bin/
)

