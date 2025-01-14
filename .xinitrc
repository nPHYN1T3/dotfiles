#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

sto=4200
xset s $sto
xset dpms $sto $sto $sto

#xmodmap -pke > ~/xmodmap_original
#xmodmap ~/xmodmap_original

##########################
#setxkbmap -option terminate:ctrl_alt_bksp
#setxkbmap -option caps:none
setxkbmap -option caps:hyper

#localectl list-keymaps
#loadkeys <keymap>
##########################
#Reset
#setxkbmap -layout us ; setxkbmap us ; localectl set-keymap us

##########################
#xmodmap ~/.Xmodmap

xrdb ~/.Xresources
/usr/bin/xsettingsd &

$HOME/Scripts/pillar/session/logs-dir.sh
$HOME/Scripts/pillar/session/session_base.sh 2>&1 >> /tmp/logs/session.log &

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

session=${1:-ctwm}

case $session in
ctwm) exec $HOME/Scripts/pillar/launchers/ctwm.sh >>/tmp/logs/ctwm.log 2>&1 ;;
# No known session, try to run it as command
*) exec $1 ;;
esac

# If the WM fails completely we either try to catch a shell or just ditch correctly.
#$HOME/Scripts/$HOSTNAME/session/close.sh logout
$SHELL
