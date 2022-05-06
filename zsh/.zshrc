# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# theme and plugins
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# clean prompt
prompt_context() {}
prompt_dir() {
    prompt_segment blue $CURRENT_FG ' %C% '
}

# clipboard aliases (requires xclip)
if [ $(command -v "xclip") ]; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi

# extra aliases
alias ll='ls -lah'

# fzf (update paths if not on arch!)
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/key-bindings.zsh
    source /usr/share/fzf/completion.zsh
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# autoboot desktop
if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep bspwm || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# syntax highlighting (keep at end of this file!)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
