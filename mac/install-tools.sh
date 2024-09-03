#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
#ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"



#!/bin/bash

tool_list=(
  zsh
  firefox
  google-chrome
  slack
  pyenv
  node
  visual-studio-code
  azure-cli
  meld
  --cask docker
  go
  iterm2
  7-zip
  jq
  terraform 
  terragrunt
  --cask spotify
  helm
  kind
  ipcalc
  starship
  vlc
  spectacle
  findutils
  moreutils
  watch
  coreutils
  highlight
  gnu-getopt
  tree
  haskell-stack
  gh
)

#brew tap homebrew/cask-fonts

for tool in "${tool_list[@]}"
do
  brew install "$tool"
done
exit
