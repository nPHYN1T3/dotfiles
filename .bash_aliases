alias sxiv='sxiv -a'
alias man='batman'
gman() {
batman $1 | leafpad
}
alias ps='ps auwx'
# | lolcat -v 1 -h -0.001
alias top="top"
# | lolcat -v 1 -h -0.001
#alias df='df -H -T -xloop -xsquashfs | lolcat -v 1 -h -0.001'
alias df='df -H -xloop -xsquashfs --output=used,avail,pcent,target'
# | lolcat -v 1 -h -0.001
alias ls='ls -lAh --color=always'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto 2> /dev/null'
alias nbgr='grep -I -n -H --color=auto 2> /dev/null'
alias dirs="dirs -v"
alias calc="galculator"
alias terminals="$HOME/Scripts/$HOSTNAME/launchers/terminals.sh"
alias terms="$HOME/Scripts/$HOSTNAME/launchers/terminals.sh"
alias play="$HOME/Scripts/play.sh"
alias vplay="$HOME/Scripts/vplay.sh"
alias qtc="$HOME/Scripts/qtc.sh"
alias update="sudo pacman -Syu ; xmodmap ~/.Xmodmap"
#alias sudo="sudo -E"
#alias sudo="sudo GTK_THEME=03-root "
alias mousepad="qtextpad"
alias notepad="qtextpad"
alias notepad="qtextpad"
alias np="qtextpad"
alias lp="qtextpad"
alias ndate="date '+%A %B %d %Y %R:%S'"
# | lolcat -h 1 -r
alias edate="date '+%s'"
# | lolcat -h 1 -r
#alias rm="rm -rv"
alias rcp="rsync -vlhruP --info=progress2 --stats "
alias ff="$HOME/Scripts/find.sh"
alias numu="$HOME/Scripts/newmusic.sh"
alias nethogs="nethogs -sl -d 5"
alias logout="$HOME/Scripts/$HOSTNAME/session/close.sh logout"
alias reboot="$HOME/Scripts/$HOSTNAME/session/close.sh reboot"
alias poweroff="$HOME/Scripts/$HOSTNAME/session/close.sh poweroff"
alias aon="$HOME/Scripts/$HOSTNAME/session/audio_bottom.sh net"
alias daon="$HOME/Scripts/$HOSTNAME/session/audio_bottom.sh denet"
alias neofetch="fastfetch"
alias tarcmd="$HOME/Scripts/$HOSTNAME/launchers/StartTarkov14.9.sh "
alias tarkov="$HOME/Scripts/$HOSTNAME/launchers/StartTarkov14.9.sh game"
alias steam="$HOME/Scripts/$HOSTNAME/launchers/steam.sh"
alias du="dua -t6 -x interactive "

alias dir='dir --color=auto'
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias grubup="sudo update-grub"
# | lolcat -h 1 -r
alias hw='hwinfo --short'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias rmpkg="sudo pacman -Rdd"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias upd='/usr/bin/update'
# | lolcat -v 1 -h -0.001
alias vdir='vdir --color=auto'
alias wget='wget -c '
alias roccat='roccatkonextdopticalconfig'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns `pacman -Qtdq`'
# | lolcat -v 1 -h -0.001

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"
alias fjctl="journalctl --system -k -f -x"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
