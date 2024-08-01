
# linux.dotfiles

[GitHub repo](https://github.com/mshaevitch/linux.dotfiles)

> [!NOTE]  
> If this repo was cloned using HTTPS, after switching to SSH, run:

```bash
git remote set-url origin git@github.com:mshaevitch/linux.dotfiles.git
```

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
