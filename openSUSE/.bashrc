# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

#zypper aliases
# UPDATE
alias update="sudo zypper dup && sudo zypper clean && sudo zypper purge-kernels && sudo rm /tmp/* -rf && sudo journalctl --vacuum-time=1d && flatup && flatclear && flatclean"
alias upgrade="sudo zypper dup" 
alias flatup="sudo flatpak update"
alias flatclean="sudo flatpak uninstall --unused"
alias flatclear="sudo rm -rf /var/tmp/flatpak-cache*"
alias pipup="pip install --upgrade pip"
alias upbash=". ~/.bashrc"
alias orphaned="sudo zypper pa --orphaned"
alias clean="sudo zypper cc"
alias verify="sudo zypper verify"
alias libre="free -h && sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && free -h"
alias search="sudo zypper se"
alias install="sudo zypper in" 
alias ar="sudo zypper ar -f -n"

#TRIM
alias trim="trimroot && trimhome"
alias trimroot="sudo /usr/sbin/fstrim -v /"
alias trimhome="sudo /usr/sbin/fstrim -v /home"

#PROTON
alias protonc="sudo protonvpn connect"
alias protons="sudo protonvpn c -f"
alias protonst="sudo protonvpn disconnect"

# Youtube
alias youtube="youtube-dl --extract-audio --audio-format mp3"
alias playlist="youtube-dl -cit https://www.youtube.com/playlist?list="
alias youtubefile="youtube-dl -f best -a "

# Weather
alias weather="curl http://wttr.in/Thessaloniki"
alias kairos="curl http://wttr.in/Athens"
alias covid="curl snf-878293.vm.okeanos.grnet.gr"

# Protonvpn
alias protonc="sudo protonvpn connect"
alias protons="sudo protonvpn c -f"
alias protonst="sudo protonvpn disconnect"

# Servers
alias server="python -m http.server 8000"
alias doker="sudo systemctl start docker"
alias xamppctl="sudo /opt/lampp/manager-linux-x64.run"

# Network
alias net="nmap -sP 192.168.1.1/24"
alias myip="ip -br -c a"
alias my-ip="curl ipinfo.io/ip"

# Usefull scripts
alias metefrase="trans -t el "
alias enose="pdfunite *.pdf out.pdf"
alias png2pdf="convert *.png out.pdf"
alias infoi="inxi -b"
alias disk="ncdu"
alias shutdown="sudo shutdown -h now"
alias istoriko="cat /var/log/zypp/history"

# 3rd party
alias team="sudo systemctl start teamviewerd"
alias mega="megasync --local megatools --remote /Root/Uploads"
#SAGEMATH
alias sagemathstart="sudo docker run -p8888:8888 sagemath/sagemath:latest sage-jupyter"
alias sagemathstop="sudo docker ps | grep sagemath | awk '{print $1}' | xargs docker stop"

# Download openSUSE
alias opensuse="wget http://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-GNOME-Live-x86_64-Current.iso "

