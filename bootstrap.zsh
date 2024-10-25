#!/bin/zsh

# Set up Neovim
mkdir -p ~/.config/nvim
cp ~/git/linux.dotfiles/nvim/init.lua ~/.config/nvim/

# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

# p10k - https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# zsh-autosuggestions - https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# fzf - https://github.com/junegunn/fzf?tab=readme-ov-file#using-git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# fzf-tab - https://github.com/Aloxaf/fzf-tab?tab=readme-ov-file#manual
git clone https://github.com/Aloxaf/fzf-tab ~/.zsh/fzf-tab

# Copy all dotfiles to home folder
cp -a ~/git/linux.dotfiles/home/.[!.]* ~/ || { echo "Failed to copy dotfiles"; exit 1; }
