#!/bin/bash
# Lovingly stolen from Steve Losh 
# https://github.com/sjl/dotfiles/blob/master/bin/bootstrap.sh

set -e

function ensure_link {
    test -L "$HOME/$2" || ln -s "$HOME/$1" "$HOME/$2"
}

mkdir -p ~/bin

test -d ~/.dotfiles || git clone https://github.com/awreece/dotfiles ~/.dotfiles
test -d ~/.oh-my-zsh || git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

ensure_link ".dotfiles/vim"            ".vim"
ensure_link ".dotfiles/vimrc"      ".vimrc"
ensure_link ".dotfiles/gitconfig"      ".gitconfig"
ensure_link ".dotfiles/zshrc"          ".zshrc"

# TODO(awreece): Ensure submodules updated!

echo completed
