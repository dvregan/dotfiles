#!/bin/bash

SCRIPT=$(readlink -f "$0")
DOTFILES=$(dirname "$SCRIPT")
CONFIG_DIR="$HOME/.config"

# x11
mkdir -p "$CONFIG_DIR/X11"
ln -sf "$DOTFILES/x11/.xinitrc" "$HOME/.xinitrc"
ln -sf "$DOTFILES/x11/.Xresources" "$CONFIG_DIR/X11/.Xresources"

# bspwm
mkdir -p "$CONFIG_DIR/bspwm" "$CONFIG_DIR/sxhkd" "$CONFIG_DIR/polybar" "$CONFIG_DIR/picom" "$CONFIG_DIR/dunst"
ln -sf "$DOTFILES/bspwm/bspwmrc" "$CONFIG_DIR/bspwm/bspwmrc"
ln -sf "$DOTFILES/sxhkd/sxhkdrc" "$CONFIG_DIR/sxhkd/sxhkdrc"
ln -sf "$DOTFILES/polybar/config.ini" "$CONFIG_DIR/polybar/config.ini"
ln -sf "$DOTFILES/polybar/launch.sh" "$CONFIG_DIR/polybar/launch.sh"
ln -sf "$DOTFILES/polybar/coretemp.sh" "$CONFIG_DIR/polybar/coretemp.sh"
ln -sf "$DOTFILES/picom/picom.conf" "$CONFIG_DIR/picom/picom.conf"
ln -sf "$DOTFILES/dunst/dunstrc" "$CONFIG_DIR/dunst/dunstrc"

# zsh
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

# neovim
mkdir -p "$CONFIG_DIR/nvim"
ln -sf "$DOTFILES/nvim/init.vim" "$CONFIG_DIR/nvim/init.vim"
