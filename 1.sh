#!/bin/bash

# Set Git to latest upstream PPA
sudo add-apt-repository ppa:git-core/ppa || { echo "Failed to add Git PPA"; exit 1; }
sudo apt update || { echo "Failed to update package list"; exit 1; }
sudo apt upgrade || { echo "Failed to upgrade packages"; exit 1; }

mkdir -p ~/git
git clone https://github.com/mshaevitch/linux.dotfiles.git ~/git/linux.dotfiles

# Copy all dotfiles to home folder
cp -a ~/git/linux.dotfiles/home/.[!.]* ~/ || { echo "Failed to copy dotfiles"; exit 1; }

# Set up Neovim
mkdir -p ~/.config/nvim
cp ~/git/linux.dotfiles/init.lua ~/.config/nvim/
sudo snap install nvim --classic


# Zsh plugins

#p10k - https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# zsh-autosuggestions - https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# fzf - https://github.com/junegunn/fzf?tab=readme-ov-file#using-git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# fzf-tab - https://github.com/Aloxaf/fzf-tab?tab=readme-ov-file#manual
git clone https://github.com/Aloxaf/fzf-tab ~/somewhere


# Install Zsh
sudo apt install zsh || { echo "Failed to install Zsh"; exit 1; }

# Set Zsh as default shell
chsh -s $(which zsh) || { echo "Failed to change default shell"; exit 1; }
