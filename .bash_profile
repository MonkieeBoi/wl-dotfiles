export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

export GEM_HOME="$(gem env user_gemhome)"
export PATH="$PATH:$GEM_HOME/bin"

export PATH="$HOME/.local/bin:$PATH"
export SUDO_ASKPASS="$HOME/.local/bin/tofi-pass"

BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_BMS="d:$HOME/Documents;D:$HOME/Downloads;v:$HOME/Videos;p:$HOME/Pictures;c:$HOME/Documents/Code/"
export NNN_PLUG='x:xdgdefault;p:getplugs;f:fzcd'
export NNN_TRASH=1
export NNN_OPTS='QR'

export FZF_DEFAULT_COMMAND='find .'

source "$HOME/.local/share/nord-tty"
[[ -f ~/.bashrc ]] && . "$HOME/.bashrc"
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec dbus-run-session Hyprland
fi

