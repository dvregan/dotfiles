#!/bin/bash

# vars
SCRIPT=$(readlink -f "$0")
DOTFILES=$(dirname "$SCRIPT")
CONFIG_DIR="$HOME/.config"

cd "$DOTFILES"

# X11 and zsh
mkdir -v -p "$CONFIG_DIR/X11"
ln -svf "$DOTFILES/x11/.Xresources" "$CONFIG_DIR/X11/.Xresources"
ln -svf "$DOTFILES/x11/.xinitrc" "$HOME/.xinitrc"
ln -svf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -svf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

# everything else
for file in */*; do
    mkdir -v -p "$CONFIG_DIR/$(dirname $file)"
    ln -svf "$DOTFILES/$file" "$CONFIG_DIR/$file"
done

cd -
