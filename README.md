# Dee's Dotfiles

Personal dotfiles for development machines.

## What's included?

### X11

Basic colour scheme and tabbed terminal setup (i3 and URxvt).

Requires: `i3-wm`, `i3status`, `dunst`, `libnotify`, `feh`, `rxvt-unicode`, `dmenu`, `ttf-fira-code`, and the AUR package `urxvt-tabbedex-mina86-git`.

### i3

Simple configuration for i3:

- Vim bindings for moving around
- System logout, reboot, shutdown menu on `$mod+Esc`
- Colour scheme
- Status bar configuration (check CPU coretemp path is correct if using as is)
- Configuration for `dunst`
- Randomised backgrounds with `feh`

### BSPWM

Simple config for bspwm:

- Mostly default configs for bspwm, sxhkd, picom
- Slightly modified setup for polybar with a coretemp addition (requires `lm-sensors`)
- Uses `dmenu`, `dunst`, and `feh` setup from i3

NOTE: The bspwm startup script contains an `xrandr` command specific to my displays. If you use these dotfiles please check the contents and change any necessary bits that won't work for you first.

### Neovim

Bare bones set up for now, while learning to use it.

Requires: `neovim`.

### Zsh

Shell setup.

Requires: `zsh`, `zsh-syntax-highlighting`, `xclip`, `ripgrep`, `fzf`, and [Oh My Zsh!](https://ohmyz.sh). 
