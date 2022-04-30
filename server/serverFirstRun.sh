#! /bin/bash

#	Update
apt upgrade
#	Apps
apt install -y taskwarrior neovim ranger tmux git stow xclip 
# Establishing where to work.
cd ~/
# Better Promp
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
# Better Vim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
# Better Configs
git clone https://github.com/pegromdev/.dot-tales.git
cd .dot-tales
stow server
apt uninstall -y stow
cd ~/
rm -R .dot-tales
#	Setuping up Ranger DevIcons
cd .config/ranger/ranger_devicons
make install
cd ~/

