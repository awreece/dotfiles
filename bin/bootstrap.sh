#!/bin/bash
# Lovingly stolen from Steve Losh 
# https://github.com/sjl/dotfiles/blob/master/bin/bootstrap.sh

set -e

function ensure_link {
    test -L "$HOME/$2" || ln -s "$HOME/$1" "$HOME/$2"
}

mkdir -p ~/bin

test -d ~/.dotfiles || git clone https://github.com/awreece/dotfiles ~/.dotfiles

ensure_link ".dotfiles/vim"            ".vim"
ensure_link ".dotfiles/vimrc"      ".vimrc"
ensure_link ".dotfiles/gitconfig"      ".gitconfig"
ensure_link ".dotfiles/zshrc"          ".zshrc"
ensure_link ".dotfiles/oh-my-zsh"          ".oh-my-zsh"

cd ~/.dotfiles
git submodule update --init

echo completed
