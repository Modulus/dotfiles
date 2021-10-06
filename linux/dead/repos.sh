#!/bin/bash
FILE=/etc/apt/sources.list
BACKUP_FILE=/etc/apt/sources.list.save


if test -f "$BACKUP_FILE"; then
    echo "$BACKUP_FILE exists, skipping backup"
else
    echo "$BACKUP_FILE does not exist, creating backup of $FILE"
    cp $FILE $BACKUP_FILE
    echo "" > $FILE
fi

repos=( 
    "deb http://security.debian.org/debian-security buster/updates main"
    "deb-src http://security.debian.org/debian-security buster/updates main"
    "deb http://deb.debian.org/debian buster-backports main contrib non-free" 
    "deb-src http://deb.debian.org/debian buster-backports main contrib non-free"
    "deb http://deb.debian.org/debian/ buster-updates main contrib non-free" 
    "deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free" 
    "deb http://deb.debian.org/debian buster main contrib non-free"
    "deb-src http://deb.debian.org/debian buster main contrib non-free"
    )

for repo in "${repos[@]}"
do
    echo "Checking repo $repo"
    if grep -q "$repo" $FILE; then
        echo "$repo exists in $FILE skipping"
    else
        echo "$repo does not exist in $FILE, adding"
        echo "$repo" >> $FILE
    fi
done


echo "DONE!"
cat $FILE