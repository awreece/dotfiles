# Use vim and tell oh-my-zsh to use vim defaults.
export EDITOR=vim
export CLICOLOR=1

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="awreece"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew terminalapp go golang)

source $ZSH/oh-my-zsh.sh

# Enable command line modification.
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line

# Local Settings -------------------------------------------------------------
if [[ -s $HOME/.zshrc_local ]] ; then source $HOME/.zshrc_local ; fi
