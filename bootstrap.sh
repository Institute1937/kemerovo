#!/usr/bin/env bash

apt-get install -y tree software-properties-common git-core openssl libssl-dev git vim curl zsh 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
apt-add-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable"
apt-get update
apt-get install nodejs docker-ce build-essential apt-transport-https ca-certificates gnupg2  -y
npm install -g yo
npm install -g generator-mitosis
curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
if [ ! -d ~vagrant/.oh-my-zsh ]; then
      git clone https://github.com/robbyrussell/oh-my-zsh.git ~vagrant/.oh-my-zsh
      git clone https://github.com/cerico/dotfiles/ ~vagrant/dotfiles
fi
ln -s ~vagrant/dotfiles/.zshrc ~vagrant/.zshrc
ln -s ~vagrant/dotfiles/zfiles ~vagrant/zfiles
chown vagrant: ~vagrant/.zshrc
chown vagrant: ~vagrant/zfiles
chsh -s /bin/zsh vagrant
