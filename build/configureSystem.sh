#!/bin/bash
# Privileges: Elevated need to be ran as root

# switch shell
echo "Chancing shell to ZSH"
chsh -s /bin/zsh root
chsh -s /bin/zsh $USER

# enable tuigreeded
systemctl enable greetd.service
