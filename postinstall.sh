#!/bin/bash

## remove apt blocks

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## update

sudo apt update &&

## installing essencials packages

sudo apt install python3 python-pip wine nautilus-dropbox docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak libgl1-mesa-glx:i386 openconnect network-manager-openconnect network-manager-openconnect-gnome  -y &&

## installing snap packages

sudo snap install skype --classic &&
sudo snap install insomnia &&
sudo snap install spotify &&
sudo snap install wps-office-multilang &&
sudo snap install code --classic &&
sudo snap install mailspring &&
sudo snap install flameshot &&

## adding flathub repository

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

## installing flathub apps

sudo flatpak install flathub com.obsproject.Studio -y &&
sudo flatpak install flathub com.sublimetext.three -y &&
sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y &&
sudo flatpak install flathub io.github.mmstick.FontFinder -y &&
sudo flatpak install flathub us.zoom.Zoom -y &&
sudo flatpak install flathub org.freedesktop.Piper -y &&
sudo flatpak install flathub com.anydesk.Anydesk -y &&

## Installing external softwares

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && wget -c http://media.steampowered.com/client/installer/steam.deb && wget -c https://downloads.mongodb.com/compass/mongodb-compass_1.25.0_amd64.deb && sudo dpkg -i *.deb &&

wget -c https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh && chmod +x ./install.sh && ./install.sh &&

sudo flatpak install flathub org.gimp.GIMP -y && wget -c https://doc-0s-1g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0v83rmt4mij9897co9ufvor2r1jcj1am/1567965600000/07452089978596344616/*/12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && unzip 12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && cd "PHOTOGIMP V2018 - DIOLINUX" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ &&

## Updates

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "finished"
