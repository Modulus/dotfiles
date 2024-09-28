#!/bin/bash

mkdir lua && cd lua && touch {keys.lua,opts.lua,plug.lua,var.lua} 
cd ..
mkdir plugin

cd plugin && touch packer_compiled.lua 
cd ..
echo "Copy folder to parent folder"
