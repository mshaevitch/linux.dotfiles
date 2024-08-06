#!/bin/bash

# Copy all dotfiles to home folder
cp -a ~/git/linux.dotfiles/home/.[!.]* ~/ || { echo "Failed to copy dotfiles"; exit 1; }

# Set up Neovim
mkdir -p ~/.config/nvim
cp ~/git/linux.dotfiles/nvim/init.lua ~/.config/nvim/
sudo snap install nvim --classic

# Install Mise

curl https://mise.run | sh
# Install Go 1.22.5 with: mise use go@1.22.5

# Zsh plugins

#p10k - https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# zsh-autosuggestions - https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# fzf-tab - https://github.com/Aloxaf/fzf-tab?tab=readme-ov-file#manual
# git clone https://github.com/Aloxaf/fzf-tab ~/somewhere


# Install Zsh
sudo apt install -y zsh || { echo "Failed to install Zsh"; exit 1; }

# Set Zsh as default shell
chsh -s $(which zsh) || { echo "Failed to change default shell"; exit 1; }
