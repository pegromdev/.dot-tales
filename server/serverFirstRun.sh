#! /bin/bash

# Better Stock Ubuntu Server Defaultts by pegromdev 
#	Run:
#			touch freshRun.sh && curl -L https://raw.githubusercontent.com/pegromdev/.dot-tales/main/server/serverFirstRun.sh >> freshRun.sh
#	Then execute:
#			chmod +x freshRun.sh && ./freshRun.sh 


apt upgrade
apt install -y vim ranger tmux git xsel stow xclip trash-cli make
cd ~/
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
git clone https://github.com/pegromdev/.dot-tales.git
cd .dot-tales
stow server
rm -vR !("server")
cd ~
cd .config/ranger/plugins/ranger_devicons
make install
cd ~

