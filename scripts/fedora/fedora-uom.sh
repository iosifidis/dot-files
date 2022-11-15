#!/bin/bash

echo "Update the system"

sudo dnf update -y

echo "Install rpmfusion repo"

sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Install codecs"

sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
echo "Install programs"

sudo dnf install -y flatpak git dia remmina rdesktop java-latest-openjdk.x86_64 nodejs npm docker docker-compose java-11-openjdk sagemath libnsl calligraplan mininet

echo "Install XAMPP"

wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.1.6/xampp-linux-x64-8.1.6-0-installer.run
chmod +x xampp-linux-x64-8.1.6-0-installer.run
sudo ./xampp-linux-x64-8.1.6-0-installer.run
rm xampp-linux-x64-8.1.6-0-installer.run
cd /usr/share/applications
sudo wget https://gist.githubusercontent.com/iosifidis/e9d7376b1077651f83eb2d91292e1545/raw/50f0430cf54a0cef210e91944aa91e6059a8903b/xampp.desktop -O xampp.desktop

cd ~
mkdir bin
cd bin
wget https://downloads.camunda.cloud/release/camunda-modeler/5.5.0/camunda-modeler-5.5.0-linux-x64.tar.gz
#tar -cvzf camunda-modeler-5.5.0-linux-x64.tar.gz $HOME/bin
tar -xvf camunda-modeler-5.5.0-linux-x64.tar.gz
rm camunda-modeler-5.5.0-linux-x64.tar.gz

echo "Install flatpaks"

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Codeblocks installation
flatpak install -y flathub org.codeblocks.codeblocks

#Eclipse
flatpak install -y flathub org.eclipse.Java

# VS Code installation
flatpak install -y flathub com.visualstudio.code

# DBeaver installation
flatpak install -y io.dbeaver.DBeaverCommunity

#Blender Instalation
flatpak install -y flathub org.blender.Blender

# GitKraken installation
flatpak install -y flathub com.axosoft.GitKraken

# Zoom installaion
flatpak install -y flathub us.zoom.Zoom

# Draw.io installation
flatpak install -y flathub  com.jgraph.drawio.desktop
