#!/bin/bash

echo "Update the system"

sudo dnf update -y

echo "Save .bashrc"

wget https://raw.githubusercontent.com/iosifidis/dot-files/master/Fedora/.bashrc -O .bashrc

. ~/.bashrc

echo "Install rpmfusion repo"

sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Install codecs"

sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

echo "Install programs"

sudo dnf install -y poedit meld mc gparted git youtube-dl smplayer gnome-calendar gnome-connections gnome-tweaks gcc aria2 htop libgtop2 filezilla audacity testdisk powertop nano vlc menulibre aspell-el ntfs-3g dia pdfarranger pdftk make cmake traceroute nmap translate-shell remmina rdesktop p7zip java-latest-openjdk.x86_64 gnome-shell-extension-dash-to-dock simplescreenrecorder python3-tkinter gimp-save-for-web openjpeg2 lm_sensors nodejs npm docker docker-compose ncdu gnome-extensions-app java-11-openjdk

sudo dnf config-manager --set-enabled google-chrome
sudo dnf install -y google-chrome-stable


echo "Install flatpaks"

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub com.visualstudio.code org.eclipse.Java com.anydesk.Anydesk com.axosoft.GitKraken com.discordapp.Discord com.slack.Slack org.telegram.desktop us.zoom.Zoom com.viber.Viber com.stremio.Stremio com.jgraph.drawio.desktop com.github.junrrein.PDFSlicer com.github.xournalpp.xournalpp net.codeindustry.MasterPDFEditor com.uploadedlobster.peek io.github.seadve.Kooha com.belmoussaoui.Decoder org.freeplane.App

sudo flatpak override --filesystem=home com.discordapp.Discord

#cd bin
#wget https://download.cdn.viber.com/desktop/Linux/viber.AppImage
