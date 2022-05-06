# make sure XDG paths are set
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# and set up zsh to use them
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# other paths
export GOPATH=$HOME/Software/go
export PATH=$PATH:/$GOPATH/bin
export COMPOSER_HOME=$HOME/.composer

# fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# misc
export GPG_TTY=$(tty)
export EDITOR=nvim
export VISUAL=nvim
