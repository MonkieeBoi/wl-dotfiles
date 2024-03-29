# PS1="[\u@\h \W]\$ "
PS1="\[\e[1;36m\][\[\e[34m\]\u\[\e[36m\]@\[\e[37m\]\h \[\e[39m\]\W\[\e[36m\]]\[\e[0m\]\$ "

# Bindings

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'
bind '"\C-o":"cd \"$(find . -type d -printf '\''%P\\n'\'' 2>/dev/null | fzf --preview '\''ls -A {}'\'')\"\n"'
bind '"\C-r":"cd \"$(find / -type d 2>/dev/null | fzf --preview '\''ls -A {}'\'')\"\n"'

# Infinite history

HISTSIZE=
HISTFILESIZE=

# Colors

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Aliases

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vi='nvim'
alias tsm='transmission-remote'
alias dvtm='dvtm -m ^w'
alias t='tmuxify'
alias onefetch='onefetch -t 2 7 7 4 4 7'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
# shopt -s globstar

# set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color|*-256color) color_prompt=yes;;
# esac

# Autocompletion for aliases
_completion_loader git

complete -o bashdefault -o default -o nospace -F __git_wrap__git_main config
n () {
    # Block nesting of nnn in subshells
    [ "${NNNLVL:-0}" -eq 0 ] || {
        echo "nnn is already running"
        return
    }
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # The command builtin allows one to alias nnn to n, if desired, without
    # making an infinitely recursive alias
    command nnn "$@"

    [ ! -f "$NNN_TMPFILE" ] || {
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    }
}
