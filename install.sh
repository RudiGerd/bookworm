#!/usr/bin/env bash

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Install Window Manager
sudo apt install -y bspwm suckless-tools sxhkd polybar xautolock slock

mkdir -p ~/.config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Packages needed for window manager installation
sudo apt install -y feh picom rofi dunst libnotify-bin unzip uxterm alacritty

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager openvpn

# Enable services

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Network Manager
sudo apt install -y network-manager network-manager-gnome 

# Installation for Appearance management
sudo apt install -y lxappearance 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 
 
# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus

# Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

# Basic utilities
sudo apt install -y htop neofetch vim ranger exa

# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

sudo apt autoremove

