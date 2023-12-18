export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME_HOME:="$HOME/.cache"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export WINEPREFIX="$XDG_DATA_HOME"/wine
export HISTFILE="${XDG_STATE_HOME}"/bash/history

export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"

# export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

export GEM_HOME="$(gem env user_gemhome)"
export PATH="$PATH:$GEM_HOME/bin"

export PATH="$HOME/.local/bin:$PATH"
export SUDO_ASKPASS="$HOME/.local/bin/tofi-pass"

export NNN_FCOLORS="0B0B04060006060009060B06"
export NNN_BMS="d:$HOME/Documents;D:$HOME/Downloads;v:$HOME/Videos;p:$HOME/Pictures;c:$HOME/Documents/Code;C:$HOME/.config;l:$HOME/.local;m:/run/media/$USER"
export NNN_PLUG='x:xdgdefault;p:getplugs;f:fzcd;m:nmount;e:suedit;w:wallpaper'
export NNN_TRASH=1
export NNN_OPTS='QR'

export FZF_DEFAULT_COMMAND='find .'

source "$HOME/.local/share/nord-tty"
[[ -f ~/.bashrc ]] && . "$HOME/.bashrc"
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec dbus-run-session Hyprland
fi
