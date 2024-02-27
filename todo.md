# Todo dotfiles and Linux Install

## Missing features
- [X] Clipboard between applications (VS Code to Alecritty dose not work after one is closed)
	- [ ] Would like to not save all clipboard history due to secrets being copied

## Base system install
- [ ] Create install script that installs required packages
	- [X] Create base installation for Fedora
	- [ ] Test installation
	- [ ] Install non dnf packages
		- [ ] Plex Amp
		- [ ] Obsidian notes
		- [ ] swaysome (`sudo dnf install rust cargo` to install dependencies)
		- [ ] sworkstyle (`sudo dnf install rust cargo` to install dependencies)
- [ ] Create script that configures packages and moves dotfiles to correct places
	- Using GNU Stow for dotfile management from this git repo
	- Alternative is to use Ansible and create roles for etch application group/specific application to get dotfiles in correct locations
- [ ] Create a first run script
	- [ ] Run Display and output manage to set resolution and displays


## Create initial dotfiles
- [ ] UI
	- [X] tuigreet `/etc/greetd/config.toml`
	- [X] Sway
	- [X] Waybar
	- [ ] rofi
	- [ ] swaylock
- [ ] Applications
	- [ ] Alacritty
	- [ ] KeePassXC
	- [ ] QuodLibet
	- [ ] Firefox
- [ ] TUI
	- [ ] ZSH
		- [ ] PS1
	- [ ] TMUX
	- [ ] VIM vs NeoVIM
	- [ ] git
	- [ ] gh

- [ ] Theming
	- [ ] GTK
	- [ ] Alecritty
	- [ ] rofi
	- [ ] sway