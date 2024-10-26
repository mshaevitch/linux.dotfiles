
# linux.dotfiles

## Steps

Set up Zsh

```bash
echo "# This is a comment" > ~/.zshrc
sudo apt install -y zsh
zsh
```

Update git to latest upstream PPA

```bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt update && sudo apt upgrade -y
```

Create git folder and clone this repo

```bash
mkdir -p ~/git && git clone https://github.com/mshaevitch/linux.dotfiles.git ~/git/linux.dotfiles
```

Run bootstrap script

```bash
~/git/linux.dotfiles/bootstrap.zsh
```

(Optional) Switch from HTTPS to SSH

```bash
git remote set-url origin git@github.com:mshaevitch/linux.dotfiles.git
```

(Optional) Generate SSH Key

```bash
ssh-keygen -t ed25519 -C "michael.shaevitch@gmail.com"
```

(Optional) Copy Public SSH Key

```bash
cat ~/.ssh/id_ed25519.pub
```

(Optional) Load key into ssh-agent

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Import the keys to GitHub:
https://github.com/settings/keys
