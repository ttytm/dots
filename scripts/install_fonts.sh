#!/bin/bash

FONT_DIR="$HOME/.local/share/fonts"

if [ ! -d "$FONT_DIR" ]; then
	mkdir "$FONT_DIR"
fi

cd "$FONT_DIR"

# Nerd Fonts
# Requires `subversion`
svn export https://github.com/ryanoasis/nerd-fonts/trunk/patched-fonts/JetBrainsMono/Ligatures JetBrainsNFM 
svn export https://github.com/ryanoasis/nerd-fonts/trunk/patched-fonts/FantasqueSansMono FantasqueSansNFM

# Regular Fonts
mkdir FantasqueSansMono && cd FantasqueSansMono \
	&& curl -LO https://github.com/belluzj/fantasque-sans/releases/latest/download/FantasqueSansMono-LargeLineHeight.tar.gz \
	&& tar -zxf FantasqueSansMono-LargeLineHeight.tar.gz TTF \
	&& mv TTF/*.ttf ./ \
	&& rm -r TTF && rm FantasqueSansMono-LargeLineHeight.tar.gz \

fc-cache -fv

exit 0
