#!/bin/bash

SYNCED_DOTS_DIR="$HOME/Dev/dots/"

# make sure to execute sync from correct directory
if [ ! -d "$SYNCED_DOTS_DIR" ]; then
	echo "Error: can't find sync directory to execute sync securely"
	exit 0
fi

cd "$SYNCED_DOTS_DIR"

# /[dir]/ > dir content will be synced
# /[dir] > dir will be synced
SOURCES="$HOME/.config/zsh \
$HOME/.config/kitty \
	$HOME/.config/alacritty"

TARGET="./.config"

# EXCLUDE="--exclude-from=exclude.lst"

RSYNCCONF="--delete"

LOGFILE="--log-file=scripts/sync.log"

RSYNC=`which rsync`

$RSYNC -avrpuE $RSYNCCONF $SOURCES $TARGET $EXCLUDE $LOGFILE

exit 0
