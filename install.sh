#!/bin/bash

SCRIPT=$(readlink -f "$0")
DOTFILES=$(dirname "$SCRIPT")
CONFIG_DIR="$HOME/.config"

# X startup
ln -sf "$DOTFILES/x11/.xinitrc" "$HOME/.xinitrc"

# Basic X config
mkdir -p "$CONFIG_DIR/X11"
ln -sf "$DOTFILES/x11/.Xresources" "$CONFIG_DIR/X11/.Xresources"

# Neovim
mkdir -p "$CONFIG_DIR/nvim"
ln -sf "$DOTFILES/nvim/init.vim" "$CONFIG_DIR/nvim/init.vim"

# i3
mkdir -p "$CONFIG_DIR/i3" "$CONFIG_DIR/dunst"
ln -sf "$DOTFILES/i3/config" "$CONFIG_DIR/i3/config"
ln -sf "$DOTFILES/i3/i3status.conf" "$CONFIG_DIR/i3/i3status.conf"
ln -sf "$DOTFILES/dunst/dunstrc" "$CONFIG_DIR/dunst/dunstrc"

# Zsh
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
