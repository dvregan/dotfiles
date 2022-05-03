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

# bspwm
mkdir -p "$CONFIG_DIR/bspwm" "$CONFIG_DIR/sxhkd" "$CONFIG_DIR/polybar" "$CONFIG_DIR/picom"
ln -sf "$DOTFILES/bspwm/bspwmrc" "$CONFIG_DIR/bspwm/bspwmrc"
ln -sf "$DOTFILES/sxhkd/sxhkdrc" "$CONFIG_DIR/sxhkd/sxhkdrc"
ln -sf "$DOTFILES/polybar/config.ini" "$CONFIG_DIR/polybar/config.ini"
ln -sf "$DOTFILES/polybar/launch.sh" "$CONFIG_DIR/polybar/launch.sh"
ln -sf "$DOTFILES/polybar/coretemp.sh" "$CONFIG_DIR/polybar/coretemp.sh"
ln -sf "$DOTFILES/picom/picom.conf" "$CONFIG_DIR/picom/picom.conf"

# Zsh
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
