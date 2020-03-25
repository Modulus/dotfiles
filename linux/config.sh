#!/bin/bash
FILE=~/.zshrc
BACKUP_FILE=~/.zshrc.save

if test -f "$BACKUP_FILE"; then
    echo "$BACKUP_FILE exists, skipping backup"
else
    echo "$BACKUP_FILE does not exist, creating backup of $FILE"
    cp $FILE $BACKUP_FILE
fi


cp config/zshrc ~/.zshrc


cp config/vimrc ~/.vimrc

echo "run 'source ~/.zshrc'"
echo "run vim and :PlugInstall"