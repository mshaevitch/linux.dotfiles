#!/usr/bin/env zsh

# Install Neovim via Snap
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
