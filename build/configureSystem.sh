#!/bin/bash
# Privileges: Elevated need to be ran as root
# need to be ran from git/project root

# enable tuigreeded
systemctl enable gdm.service

# Set graphical as default target
systemctl set-default graphical.target

# Create config file
mkdir -p ~/.config
cp -rT ./dotfiles/.config/ ~/.config/
