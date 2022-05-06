#!/bin/bash

# vars
SCRIPT=$(readlink -f "$0")
DOTFILES=$(dirname "$SCRIPT")
CONFIG_DIR="$HOME/.config"

cd "$DOTFILES"

# create dir structure
for dir in *; do [ -d "$dir" ] && mkdir -vp "$CONFIG_DIR/$dir"; done

# X11 (the */* glob below ignores files starting with '.')
ln -svf "$DOTFILES/X11/.Xresources" "$CONFIG_DIR/X11/.Xresources"
ln -svf "$DOTFILES/X11/.xinitrc" "$CONFIG_DIR/X11/.xinitrc"

# zsh (.zshenv still needs to be in $HOME to set ZDOTDIR)
ln -svf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -svf "$DOTFILES/zsh/.zshrc" "$CONFIG_DIR/zsh/.zshrc"

# everything else
for file in */*; do
    ln -svf "$DOTFILES/$file" "$CONFIG_DIR/$file"
done

cd -
