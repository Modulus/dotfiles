#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
#ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
brew tap hashicorp/tap


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
  hashicorp/tap/terraform
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
  openshift-cli
  kubectx
  k9s
  obsidian
)

#brew tap homebrew/cask-fonts

for tool in "${tool_list[@]}"
do
  brew install "$tool"
done
exit

echo "Install krew plugin"


# (
#   set -x; cd "$(mktemp -d)" &&
#   OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
#   ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
#   KREW="krew-${OS}_${ARCH}" &&
#   curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
#   tar zxvf "${KREW}.tar.gz" &&
#   ./"${KREW}" install krew
# )
