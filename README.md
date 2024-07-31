
# linux.dotfiles

[GitHub repo](https://github.com/mshaevitch/linux.dotfiles)

## Zsh

Copy .zshrc

```bash
cp ~/.zshrc ~/git/linux.dotfiles
```

Add Zsh alias

```bash
vim $ZSH_CUSTOM/aliases.zsh
```

## Neovim

(If not created already) Create nvim config dir (and parent dirs)

```bash
mkdir -p ~/.config/nvim
```

Copy nvim config

```bash
cp ~/git/linux.dotfiles/init.lua ~/.config/nvim/
```

## Misc

List all files (including hidden)

```bash
ls -la
```
