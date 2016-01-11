#!/bin/bash

sudo apt-get update


packages=("git nautilus-dropbox zsh unzip unrar vlc xchat vim vim-gnome python-pip gimp deluge tree htop wget gitk mumble mumble-server weka curl ssh trash-cli build-essential autoconf libtool pkg-config httpie nmap"); 
pypackages=("virtualenv");
pypackagesU=("ipython");

# Ubuntu Packages
for p in ${packages[@]}
do
    sudo apt-get install -y $p;
done

# Python Packages
for p in ${pypackages[@]}
do
    sudo pip install  $p;
done

# Python Packages with Upgrades
for p in ${pypackages[@]}
do
    sudo pip install -U $p;
done

mkdir -p ~/.vimbackup/backup
mkdir -p ~/.vimbackup/swap

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp thorn.zsh-theme ~/.oh-my-zsh/themes/
cp .zshrc ~
cp molokai.vim ~/.vim/color
cp .theanorc ~

mkdir -p ~/.vim/autoload ~/.vim/bundle && \

# jekyll install
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
rvm get stable
rvm use stable
rvm rubygems latest
gem install jekyll
jekyll -v

chsh -s `which zsh`
echo "Backup downloads completed. Check Downloads Folder"
