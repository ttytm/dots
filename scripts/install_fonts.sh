#!/bin/bash

# Shell script for GNU/Linux systems to download fonts directly from their source.

local_share_dir="$HOME/.local/share"

if [ ! -d "$local_share_dir" ]; then
	echo "The script is not intended for the current operating system."
	exit 2
fi

fonts_dir="$local_share_dir/fonts"

# Regular Fonts.
mkdir -p "$fonts_dir/FantasqueSansMono" \
	&& curl -LO https://github.com/belluzj/fantasque-sans/releases/latest/download/FantasqueSansMono-LargeLineHeight.tar.gz \
	&& tar -C "$fonts_dir/FantasqueSansMono" -xvf FantasqueSansMono-LargeLineHeight.tar.gz TTF \
	&& rm FantasqueSansMono-LargeLineHeight.tar.gz

# Nerd Fonts (requires `subversion`).
if ! which svn >/dev/null 2>&1; then
	echo "Nerd Font installation requires subversion to be installed. Make sure 'svn' is executable."
	exit 1
fi

nerd_fonts_dir="$fonts_dir/NerdFonts"
if [ ! -d "$nerd_fonts_dir" ]; then
	mkdir "$nerd_fonts_dir"
fi

# FIXME: github dropped support for subversion.
# Using the package manager is the preferred way to manage font installations.
nerd_fonts_url="https://github.com/ryanoasis/nerd-fonts/trunk/patched-fonts/"
svn export "$nerd_fonts_url/JetBrainsMono/Ligatures" "$nerd_fonts_dir/JetBrainsMono"
svn export "$nerd_fonts_url/VictorMono" "$nerd_fonts_dir/VictorMono"
svn export "$nerd_fonts_url/Hasklig" "$nerd_fonts_dir/Hasklig"
svn export "$nerd_fonts_url/FantasqueSansMono" "$nerd_fonts_dir/FantasqueSansMono"

# Update font cache.
fc-cache -fv

exit 0
