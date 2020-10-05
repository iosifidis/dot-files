# dot-files
My Dot Files. System settings

#Backup of installed
http://www.nixtutor.com/linux/keep-a-backup-of-installed-packages/


# Debian / Ubuntu

**Backup**

dpkg --get-selections > installed-software.log

**Restore**

dpkg --set-selections < installed-software.log

apt-get dselect-upgrade


#Arch Linux

**Backup**

pacman -Qqe | grep -v "$(pacman -Qmq)" > pkglist

**Restore**

pacman -S $(cat pkglist)


# openSUSE

**Backup**

rpm -qa > installed-software.bak

**Restore**

sudo zypper install $(cat installed-software.bak)


