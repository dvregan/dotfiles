#!/bin/bash

SCRIPT=$(readlink -f "$0")
DOTFILES=$(dirname "$SCRIPT")
CONFIG_DIR="$HOME/.config"

ln -sf "$DOTFILES/x11/.xinitrc" "$HOME/.xinitrc"

mkdir -p "$CONFIG_DIR/X11"
ln -sf "$DOTFILES/x11/.Xresources" "$CONFIG_DIR/X11/.Xresources"

mkdir -p "$CONFIG_DIR/nvim"
ln -sf "$DOTFILES/nvim/init.vim" "$CONFIG_DIR/nvim/init.vim"

mkdir -p "$CONFIG_DIR/i3"
ln -sf "$DOTFILES/i3/config" "$CONFIG_DIR/i3/config"
ln -sf "$DOTFILES/i3/i3status.conf" "$CONFIG_DIR/i3/i3status.conf"
