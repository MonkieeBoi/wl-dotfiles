export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

source "$HOME/.local/share/nord-tty"
[[ -f ~/.bashrc ]] && . "$HOME/.bashrc"
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    Hyprland
fi
