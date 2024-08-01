#!/bin/bash

# Set Git to latest upstream PPA
sudo add-apt-repository ppa:git-core/ppa || { echo "Failed to add Git PPA"; exit 1; }
sudo apt update || { echo "Failed to update package list"; exit 1; }
sudo apt upgrade || { echo "Failed to upgrade packages"; exit 1; }

# Copy all dotfiles to home folder
cp -a ~/git/linux.dotfiles/home/.[!.]* ~/ || { echo "Failed to copy dotfiles"; exit 1; }

# Install Zsh
sudo apt install zsh || { echo "Failed to install Zsh"; exit 1; }

# Set Zsh as default shell
chsh -s $(which zsh) || { echo "Failed to change default shell"; exit 1; }
