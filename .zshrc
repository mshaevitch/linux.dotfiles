# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$PATH:/snap/bin"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tav/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Alt + Left Arrow to move backward by word
bindkey '^[[1;3D' backward-word
# Alt + Right Arrow to move forward by word
bindkey '^[[1;3C' forward-word
# Make filename completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Make command completion case-insensitive
zstyle ':completion:*:commands' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -U compinit; compinit
source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh

eval "$(~/.local/bin/mise activate zsh)"

# Aliases
alias cls='clear'
alias reload='source ~/.zshrc'
alias vim='nvim'
alias cc='explorer.exe .'
