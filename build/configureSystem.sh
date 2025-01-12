#!/bin/bash
# Privileges: Elevated need to be ran as root
# need to be ran from git/project root

# switch shell
echo "Chancing shell to ZSH"
chsh -s /bin/zsh root
chsh -s /bin/zsh $USER

# enable tuigreeded
systemctl start greetd.service
systemctl enable greetd.service

# Set graphical as default target
systemctl set-default graphical.target

# Create config file
mkdir -p ~/.config
cp -rT ./dotfiles/.config/ ~/.config/

# Configure tuigreeted
cp .dotfiles/greetd/config.toml /etc/greetd/config.toml
chown greetd:greetd /etc/greetd/config.toml

cp .dotfiles/greetd/sway-run /usr/local/bin/sway-run
chmod +x /usr/local/bin/sway-run