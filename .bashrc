#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

PATH=$PATH:$HOME/Scripts:$HOME/Scripts/$HOSTNAME:$HOME/Scripts/$HOSTNAME/launchers:$HOME/Scripts/$HOSTNAME/session:$HOME/.local/share/bin:/home/$(user)/.local/bin

DYELLOW="\[$(tput setaf 214)\]"
ORANGE="\[$(tput setaf 202)\]"
LORANGE="\[$(tput setaf 172)\]"
GRAY="\[$(tput setaf 244)\]"
DARKGREEN="\[$(tput setaf 2)\]"
GREEN="\[$(tput setaf 10)\]"
RED="\[$(tput setaf 9)\]"
DARKRED="\[$(tput setaf 1)\]"
WHITE="\[$(tput setaf 15)\]"
RESET="\[$(tput sgr0)\]"

PS1="${DYELLOW}\u${GRAY}[${LORANGE}\#${GRAY}]\[$(tput setaf 1)\]@${DYELLOW}\H${GRAY}[${LORANGE}\l${GRAY}]\[$(tput setaf 15)\]${RESET}: \W ${WHITE}[> ${RESET}"

MAIL=""

source ~/.env

HISTFILESIZE=2000
HISTSIZE=1000
HISTCONTROL=ignoredups
if [[ -z "${DISPLAY}" ]] && [[ "${XDG_VTNR}" -eq 1 ]]; then
	exec startx
fi

#source "$HOME/.cargo/env"

source $HOME/Scripts/to.sh
