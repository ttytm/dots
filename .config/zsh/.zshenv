# == JS/TS
export BUN_INSTALL="$HOME/.bun"
export NPM_PACKAGES="${HOME}/.npm-packages"
export NVM_DIR="$HOME/.nvm"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
# == LLVM
# export PATH=$HOME/Git/llvm-17/build/bin/:$PATH
# == V
export VPM_NO_INCREMENT=1
# == Mojo
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo
# `find $(python3 -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))') -iname 'libpython*.[s,d]*' | sort -r | head -n 1`
# export MOJO_PYTHON_LIBRARY=/usr/lib/libpython3.so
export LD_LIBRARY_PATH=$HOME/.local/lib/arch-mojo:$LD_LIBRARY_PATH
# == Go
# == JVM
# Scala
# export SPARK_HOME=$HOME/.local/share/spark
export JAVA_HOME=$(realpath $(which java) | sed 's/\/bin\/.*//')
# export PATH="$PATH:$HOME/.cache/coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.23%252B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.23_9.tar.gz/jdk-11.0.23+9/bin"
# == Spawn
export SPAWN_ROOT=$HOME/Git/Spawn/spawn
# == Misc
export ZED_WINDOW_DECORATIONS=server
export FX_SHOW_SIZE=true
export ONYX_PATH=$HOME/.onyx

path+=(
	# == Misc
	$HOME/.local/bin
	$HOME/.rod/bin
	$HOME/.vmr/bin
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
	$HOME/.modular/bin
	# == Go
	$HOME/go/bin
	# == Turso
	$HOME/.turso
	# == Onyx
	$ONYX_PATH/bin
)
