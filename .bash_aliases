alias sxiv='sxiv -a'
alias ps='ps auwx | lolcat -v 1 -h -0.001'
alias top="top | lolcat -v 1 -h -0.001"
alias df='df -H -T -xloop -xsquashfs | lolcat -v 1 -h -0.001'
alias ls='ls -lAh --color=always'
alias mkdir='mkdir -pv'
alias grep='grep --color=always'
alias nbgr='grep -I -n -H --color=always'
alias dirs="dirs -v"
alias calc="galculator"
alias tarcmd="$HOME/Scripts/$HOSTNAME/launchers/tarkovcmd.sh"
alias play="$HOME/Scripts/play.sh"
alias qtc="$HOME/Scripts/qtc.sh"
alias update="sudo pacman -Syu"
#alias sudo="sudo -E"
alias mousepad="leafpad"
alias notepad="leafpad"
alias np="leafpad"
alias lp="leafpad"
alias ndate="date '+%A %B %d %Y %R:%S' | lolcat -h 1 -r"
alias edate="date '+%s' | lolcat -h 1 -r"
alias reboot="$HOME/Scripts/$HOSTNAME/close.sh reboot"
alias poweroff="$HOME/Scripts/$HOSTNAME/close.sh poweroff"

alias dir='dir --color=auto'
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias grubup="sudo update-grub | lolcat -h 1 -r"
alias hw='hwinfo --short'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias rmpkg="sudo pacman -Rdd"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias upd='/usr/bin/update | lolcat -v 1 -h -0.001'
alias vdir='vdir --color=auto'
alias wget='wget -c '
alias roccat='roccatkonextdopticalconfig'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns `pacman -Qtdq` | lolcat -v 1 -h -0.001'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"
alias fjctl="journalctl --system -k -f -x"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

