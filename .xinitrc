#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

sto=2400
xset s $sto
xset dpms $sto $sto $sto

#source ~/.env

setxkbmap -option terminate:ctrl_alt_bksp
##########################
#Reset setxkbmap -layout us
#xmodmap ~/xmodmap_original
xmodmap ~/.Xmodmap
#export AMD_VULKAN_ICD=RADV

#/etc/X11/xinit/xinitrc
#/etc/X11/xinit/xinitrc.d/
xrdb ~/.Xresources

$HOME/Scripts/$HOSTNAME/session_start.sh &

mkdir -p /tmp/logs
touch /tmp/logs/session.log

$HOME/Scripts/$HOSTNAME/launchers/ctwm.sh >> /tmp/logs/session.log 2>&1
#exec ctwm >> /tmp/logs/session.log 2>&1

#$HOME/Scripts/pillar/launchers/ctwm.sh
