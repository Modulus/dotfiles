#!/bin/bash
mkdir -p ~/.local/share/fonts/firacode
wget -P  ~/.local/share/fonts/firacode https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip \
&& cd ~/.local/share/fonts/firacode \
&&  unzip Firacode.zip \
&&  rm FiraCode.zip \
&&  fc-cache -fv
