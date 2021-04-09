# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true

#zypper aliases
alias trim="trimroot && trimhome"
alias update="sudo zypper up && sudo zypper clean && sudo zypper purge-kernels && sudo rm /tmp/* -rf && sudo journalctl --vacuum-time=1d"
alias upgrade="sudo zypper dup" 
alias search="sudo zypper se"
alias install="sudo zypper in" 
alias trimroot="sudo /usr/sbin/fstrim -v /"
alias trimhome="sudo /usr/sbin/fstrim -v /home"
alias team="sudo systemctl start teamviewerd"
alias mega="megacopy --local megatools --remote /Root/Uploads"
alias ar="sudo zypper ar -f -n"
alias net="nmap -sP 192.168.1.1/24"
alias shutdown="sudo shutdown -h now"
alias youtube="youtube-dl --extract-audio --audio-format mp3 --username eiosifidis"
alias istoriko="cat /var/log/zypp/history"
alias upbash=". ~/.bashrc"
alias myip="ip -br -c a"
alias my-ip="curl ipinfo.io/ip"
alias verify="sudo zypper verify"
alias orphaned="sudo zypper pa --orphaned"
alias flatup="sudo flatpak update"
alias clean="sudo zypper cc"
alias protonc="sudo protonvpn connect"
alias protons="sudo protonvpn c -f"
alias protonst="sudo protonvpn disconnect"
alias server="python -m SimpleHTTPServer 8000"
alias libre="free -h && sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && free -h"
alias opensuse="wget http://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-GNOME-Live-x86_64-Current.iso"
alias covid="curl snf-878293.vm.okeanos.grnet.gr"
alias weather="curl http://wttr.in/Thessaloniki"
alias kairos="curl http://wttr.in/Athens"
alias disk="ncdu"
alias py="python2"
