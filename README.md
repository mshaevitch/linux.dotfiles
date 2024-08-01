
# linux.dotfiles

## Steps

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
~/git/linux.dotfiles/bootstrap.sh
```

(Optional) Switch from HTTPS to SSH

```bash
git remote set-url origin git@github.com:mshaevitch/linux.dotfiles.git
```
