#!/bin/sh

# Update existing package
dnf update -y

# Install Display manager
dnf install gdm -y

# Install Window Manager
dnf install i3 dmenu polybar -y

# Install base GUI tools
## File explore: nautilus
## Image Viewer: EoG
## Calculator: gnome-calculator
## System settings: gnome-control-center gnome-settings-daemon
## PDF reader: evince
## Web browser: firefox
## Terminal: alacritty 
dnf install nautilus eog gnome-calculator gnome-control-center gnome-settings-daemon evince firefox  alacritty -y

# Install base TUI tools
## Base tools: tree htop
## Help: tldr
## fetch: neofetch
## git: git gh
## Networking: minicom dhcp-client openssh openssl nmap nmap-ncat sipcalc
## File explorer: mc ranger
dnf install tree htop tldr neofetch git gh minicom dhcp-client openssh openssl nmap nmap-ncat sipcalc mc ranger -y

# Install compression tools
dnf install tar unzip xz bzip2 zip p7zip unrar -y

# Install text editor
dnf install nano vim gnome-text-editor -y

# Install VS Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf update -y
dnf install code -y

# Install Office
dnf install libreoffice-writer libreoffice-clac libreoffice-langpack-en libreoffice-langpack-sv -y

# Install Python
dnf install python3 python3-pip -y

# Install Steam
dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf install steam -y

# Install discord
#dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf install discord -y

# Install Music player
echo todo...

# Install fonts
echo todo...