# Dee's Dotfiles

## IMPORTANT - PLEASE READ FIRST!

This repository contains all of the configuration files for my main development machine setup. This setup includes:

- Arch Linux and Zsh - Some settings may need changing depending on distro and shell.
- Boot process - I log in at a terminal prompt, and then the `.zshrc` automatically boots my window manager.
- Dual, mismatched monitors - I'm currently using two 27" screens, but one is 4K HDR and the other is 2K. The X11 and window manager config reflects this.

If you choose to use any of the scripts and config files in this repo, you do so **at you're own risk**!
I make no guarantees that any of them will work for you.

## What's Included?

- x11 - A basic `.xinitrc` to boot bspwm, and an `.XResources` file to set up a *Synthwave '84* inspired terminal theme. Requires: `xorg`, `xorg-xinit`, `rxvt-unicode`, `ttf-fira-code`.
- zsh - my slightly customised `zsh` and [Oh My Zsh!](https://ohmyz.sh) setup. Requires `zsh-syntax-highlighting`, `xclip`, `fzf` and `ripgrep`.
- bspwm - My window manager of choice. Includes configs for `bspwm`, `sxhkd`, `picom`, `polybar` and `dunst`, all of which are required. Also depends on `dmenu`, `lm_sensors`, `ttf-font-awesome`, `feh`, and `mpd`.
- neovim - barebones for now while I learn how to use it
