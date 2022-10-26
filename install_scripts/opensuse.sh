#!/bin/bash

echo "Update the system"

sudo zypper dup

echo "Save .bashrc"

wget https://raw.githubusercontent.com/iosifidis/dot-files/master/openSUSE/.bashrc -O .bashrc

. ~/.bashrc

echo "Install codecs"

sudo zypper install opi

opi codecs

echo "Install programs"

sudo zypper install mc poedit meld gparted git youtube-dl smplayer dconf-editor gcc aria2 imagewriter make htop filezilla photorec testdisk typelib-1_0-Vte-2.91 nano libfuse2 simplescreenrecorder epiphany vlc menulibre live-fat-stick live-grub-stick live-usb-gui openjpeg2 gimp-save-for-web aspell-el ntfs-3g dia pdfarranger pdftk cmake traceroute nmap translate-shell rar libgtop sensors remmina remmina-plugin-rdp remmina-plugin-vnc rdesktop projectlibre node17 docker flatpak audacity gnome-calendar gnome-connections gnome-common python-nautilus-common-files python310-tk preload

# Google Chrome
sudo zypper addrepo http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
sudo zypper refresh
wget https://dl.google.com/linux/linux_signing_key.pub
sudo rpm --import linux_signing_key.pub

opi ganttproject

echo "Install flatpaks"

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub com.visualstudio.code org.eclipse.Java com.anydesk.Anydesk com.axosoft.GitKraken com.discordapp.Discord com.slack.Slack org.telegram.desktop us.zoom.Zoom com.viber.Viber com.stremio.Stremio com.jgraph.drawio.desktop com.github.junrrein.PDFSlicer com.github.xournalpp.xournalpp net.codeindustry.MasterPDFEditor com.uploadedlobster.peek io.github.seadve.Kooha com.belmoussaoui.Decoder org.freeplane.App

sudo flatpak override --filesystem=home com.discordapp.Discord

#cd bin
#wget https://download.cdn.viber.com/desktop/Linux/viber.AppImage
