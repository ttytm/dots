# == Misc
export EDITOR="nvim"
export PAGER=bat
export SUDO_ASKPASS=/usr/bin/ksshaskpass
export FX_SHOW_SIZE=true
export ZED_WINDOW_DECORATIONS=server
export ZSH_COMPDUMP=$HOME/.cache/zsh/.zcompdump # do not compdump directly into config dir

# == V
export VPM_NO_INCREMENT=1
# == Mojo
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo
# `find $(python3 -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))') -iname 'libpython*.[s,d]*' | sort -r | head -n 1`
# export MOJO_PYTHON_LIBRARY=/usr/lib/libpython3.so
export LD_LIBRARY_PATH=$HOME/.local/lib/arch-mojo:$LD_LIBRARY_PATH
# == JVM (Java, Scala etc.)
export JAVA_HOME=$(realpath $(which java) | sed 's/\/bin\/.*//')
# == Onyx
export ONYX_PATH=$HOME/.onyx

path+=(
	# == Misc
	$HOME/.rod/bin
	# == Php
	$HOME/.config/composer/vendor/bin
	# == Scala
	$HOME/.local/share/spark/bin
	$HOME/.local/share/coursier/bin
	# == Rust/Solana
	$HOME/.local/share/solana/install/active_release/bin
	# == Mojo
	$HOME/.modular/bin
	# == Turso
	$HOME/.turso
	# == Onyx
	$ONYX_PATH/bin
)
