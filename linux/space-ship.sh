#!/bin/bash
FILE_ROOT=~/.oh-my-zsh/custom/themes/
FILE="${FILE_ROOT}spaceship-prompt"
LINK="${FILE_ROOT}spaceship-prompt/spaceship.zsh-theme"
LINK_NAME="${FILE_ROOT}"spaceship.zsh-theme

if test -f "$FILE"; then
    echo "$FILE exists, skipping cloning"
else
    echo "$FILE does not exist, starting clone on $FILE"
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$FILE"

    echo "Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory"

    ln -s "$LINK" "$LINK_NAME"
fi


