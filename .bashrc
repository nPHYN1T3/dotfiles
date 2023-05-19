#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PATH=$PATH:$HOME/Scripts:$HOME/Scripts/$HOSTNAME:$HOME/Scripts/$HOSTNAME/launchers:$HOME/.local/share/bin
unset MAILCHECK

PS1="\[\e[0;33m\]\u\[\e[0;31m\]:\[\e[0;33m\]\#\[\e[0;31m\]@\[\e[0;33m\]\H\[\e[0;31m\]:\[\e[0;33m\]\W\[\e[0;37m\]$ \[\e[0m\]"

#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

EDITOR=/usr/bin/nvim

MAIL=""

source ~/.env

HISTFILESIZE=2000
HISTSIZE=1000
HISTCONTROL=ignoredups

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
exec startx
#exec startx -- -logverbose 6
else
defaultterms=("sakura.term0" "sakura.term1" "sakura.term2" "sakura.term3" "sakura.term4" "sakura.term5" "sakura.journalctl" )
active=$(wmctrl -lx | grep `xprop -root | grep '_NET_ACTIVE_WINDOW(WINDOW)' | awk '{print $5}' | sed 's/,//' | sed 's/^0x/0x0/'` | awk '{print $3}')

if [[ " ${defaultterms[*]} " =~ "$active" ]]; then

ascii-image-converter -C  $HOME/Documents/Scripts/$HOSTNAME/launchers/term-logo.png

else

:
#ascii-image-converter -C  $HOME/Documents/Scripts/$HOSTNAME/launchers/term-logo.png

fi
fi

source "$HOME/.cargo/env"
source $HOME/Documents/Scripts/to.sh

