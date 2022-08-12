# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc


#alias

# Update
alias update="sudo dnf update -y && flatup && flatclean && flatclear"
alias flatup="sudo flatpak update"
alias flatclean="sudo flatpak uninstall --unused"
alias flatclear="sudo rm -rf /var/tmp/flatpak-cache*"
alias upbash=". ~/.bashrc"
alias pipup="pip install --upgrade pip"

# Search-install
alias search="sudo dnf search"
alias install="sudo dnf install"
alias shutdown="sudo shutdown -h now"

# Memory - Disk - Power
alias bat="acpi"
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
#alias trimauto="sudo systemctl enable fstrim.timer && sudo systemctl start fstrim.timer"
alias trim="sudo fstrim --all -v"
alias libre="free -h && sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && free -h"

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
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias shutdown="sudo shutdown -h now"

# 3rd party
alias team="sudo systemctl start teamviewerd"
alias mega="megasync --local megatools --remote /Root/Uploads"
#SAGEMATH
alias sagemathstart="sudo docker run -p8888:8888 sagemath/sagemath:latest sage-jupyter"
alias sagemathstop="sudo docker ps | grep sagemath | awk '{print $1}' | xargs docker stop"

# Download openSUSE
alias opensuse="wget http://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-GNOME-Live-x86_64-Current.iso "
