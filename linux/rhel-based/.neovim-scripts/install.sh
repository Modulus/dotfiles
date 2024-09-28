#!/bin/bash
sudo dnf install -y neovim python3-neovim


# Additional packages for testing

sudo dnf install -y zsh 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
