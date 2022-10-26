#!/bin/bash

echo "Update the system"

sudo apt update && sudo apt upgrade

echo "Save .bashrc"

wget https://raw.githubusercontent.com/iosifidis/dot-files/master/Ubuntu/.bashrc -O .bashrc

. ~/.bashrc

echo "Install programs"

sudo apt install -y flatpak mc poedit meld gparted git youtube-dl smplayer dconf-editor gcc aria2 imagewriter make htop filezilla photorec testdisk nano libfuse2 simplescreenrecorder vlc menulibre openjpeg2 gimp-save-for-web aspell-el ntfs-3g dia pdfshuffler pdfarranger pdftk pdfmod cmake traceroute nmap translate-shell rar libgtop sensors remmina remmina-plugin-rdp remmina-plugin-vnc rdesktop projectlibre node17 docker audacity gnome-calendar gnome-connections python310-tk python3-tk iat inxi ccd2iso gscan2pdf img2pdf ttf-mscorefonts-installer rar unrar-free p7zip p7zip-rar fbreader gnome-user-share traceroute libreoffice-base python-gi python-nautilus gir1.2-nautilus-3.0 gir1.2-ebook-1.2 gir1.2-ebookcontacts-1.2 gir1.2-edataserver-1.2 gir1.2-gtop-2.0  sg3-utils iotop cpufrequtils poppler-utils lm-sensors fancontrol i8kutils dos2unix ferret putty-tools diffpdf qpdfview gpac mencoder openjdk-16-jdk-headless openjdk-16-jdk macchanger cmake gvncviewer android-tools-fastboot libcanberra-gtk-module libcanberra-gtk3-module ccd2iso iat preload chromium

sudo apt-add-repository universe
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt update
sudo apt install --no-install-recommends cubic

echo "Install flatpaks"

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.visualstudio.code org.eclipse.Java com.anydesk.Anydesk com.axosoft.GitKraken com.discordapp.Discord com.slack.Slack org.telegram.desktop us.zoom.Zoom com.viber.Viber com.stremio.Stremio com.jgraph.drawio.desktop com.github.junrrein.PDFSlicer com.github.xournalpp.xournalpp net.codeindustry.MasterPDFEditor com.uploadedlobster.peek io.github.seadve.Kooha com.belmoussaoui.Decoder org.freeplane.App

sudo flatpak override --filesystem=home com.discordapp.Discord


#cd bin
#wget https://download.cdn.viber.com/desktop/Linux/viber.AppImage
