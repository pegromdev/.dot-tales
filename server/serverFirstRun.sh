#! /bin/bash

#	Update
apt upgrade
#	Apps
apt install -y taskwarrior vim ranger tmux git stow xclip trash-cli make
# Establishing where to work.
cd ~/
# Better Promp
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
# Better Configs
git clone https://github.com/pegromdev/.dot-tales.git
cd .dot-tales
stow server
apt uninstall -y stow
cd ~/
rm -R .dot-tales
#	Setuping up Ranger DevIcons
cd ~
cd .config/ranger/plugins/ranger_devicons
make install
cd ~/

