#!/bin/sh
# Privileges: Elevated need to be ran as root

#
# Made and tested for Fedora 39
#

# Update existing package
dnf update -y

# Base packages
## Drivers
dnf install libinput xorg-x11-drv-libinput xorg-x11-drivers mesa-dri-drivers mesa-vulkan-drivers -y

## Networking
dnf install dhcp-client NetworkManager network-manager-applet nm-connection-editor -y

## Install compression tools
dnf install tar unzip xz bzip2 zip p7zip unrar zlib xar qpdf -y

# Install Display/login manager
dnf install tuigreet -y

# Install Window Manager
## Window Manager:						sway		-- SwayWM
## Window Manager service:				sway-systemd
## Launcher: 							rofi 		-- rofi for wayland
## Menu: 								rofi 		-- rofi for wayland
## Top bar: 							Waybar		-- Like a taskbar
## Wallpaper manager: 					swaybg
## Display and output manage:			wdisplays	-- Screen configuration
## Notifications:						mako
## Screenshot:							grim
## Brightness:							brightnessctl
## Lock screen:							swaylock
## Window Manger addon dependencies:	rust cargo
dnf install sway sway-systemd rofi waybar swaybg wdisplays mako grim brightnessctl swaylock rust cargo -y

# Install base TUI tools
## shell:					zsh
## Shell tools:				zsh-autosuggestions zsh-syntax-highlighting
## Clipboard:				wl-clipboard
## Calculator:				qalculate
## Text editor:				vim-enhanced nano
## Base tools: 				tree htop
## Terminal enhancements:	tmux
## fetch:					neofetch
## git:						git gh
## Networking:				openssh openssl nmap nmap-ncat sipcalc
## File explorer:			ranger
dnf install zsh zsh-autosuggestions zsh-syntax-highlighting wl-clipboard qalculate tree htop tmux neofetch git gh openssh openssl nmap nmap-ncat sipcalc ranger -y

# Install base GUI tools
## Note: GTK flavour of applications have been chosen
## File explore: 		nautilus
## File explore addons:	sushi
## Image Viewer: 		imv
## Video player: 		mpv
## Calculator: 			qalculate-gtk
## PDF reader: 			evince
## Web browser: 		firefox
## Terminal: 			alacritty 
## Office:				libreoffice-writer libreoffice-calc
## Office addons:		libreoffice-langpack-en libreoffice-langpack-sv
## Music player:		quodlibet quodlibet-zsh-completion
## Password manager:	keepassxc
dnf install nautilus sushi imv mpv qalculate-gtk evince firefox alacritty libreoffice-writer libreoffice-calc libreoffice-langpack-en libreoffice-langpack-sv quodlibet quodlibet-zsh-completion keepassxc -y

## Install VS Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf update -y
dnf install code -y

## Install Python
dnf install python3 python3-cryptography python3-pip python3-wheel python3-requests python3-devel python3-setools -y

# Install fonts
## Base fonts Icons:	google-droid-sans-fonts google-noto* gdouros-symbola-fonts hfg-gmuend-openmoji-black-fonts hfg-gmuend-openmoji-color-fonts
dnf install google-droid-sans-fonts google-noto-color-emoji-fonts google-noto-emoji-color-fonts google-noto-emoji-fonts google-noto-fonts-common google-noto-sans-armenian-vf-fonts google-noto-sans-cjk-vf-fonts google-noto-sans-math-fonts google-noto-sans-mono-cjk-vf-fonts google-noto-sans-mono-vf-fonts google-noto-sans-vf-fonts google-noto-serif-vf-fonts gdouros-symbola-fonts hfg-gmuend-openmoji-black-fonts hfg-gmuend-openmoji-color-fonts -y

## VS code font: 		dejavu-sans-mono-fonts
## Monospace font:		adobe-source-code-pro-fonts adobe-source-code-vf-fonts
## Sway icon:			fontawesome-6-free-fonts
dnf install dejavu-sans-mono-fonts adobe-source-code-pro-fonts adobe-source-code-vf-fonts fontawesome-6-free-fonts -y
