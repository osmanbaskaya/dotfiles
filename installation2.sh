#!/bin/bash

packages=("nautilus-dropbox texlive-science zsh unzip unrar vlc guake xchat vim vim-gnome idle python-pip gimp python-numpy python-scipy git deluge goldendict python-dev python-matplotlib chromium-browser screen tree wget gummi gitk kile gnuplot python-lxml openjdk-6-jre openjdk-6-jdk terminatory filezilla subversion mumble mumble-server weka curl ssh openjdk-7-jre openjdk-7-jdk trash-cli build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev libmysqlclient-dev graphviz-dev"); 
pypackages=("threadpool pymc nltk neurolab beautifulsoup4 imdbpy pymongo virtualenv");
pypackagesU=("ipython scikit-learn pymc threadpool");


   

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

# Eclipse
cd ~/Downloads
#wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
# zshrc
#TODO private repo: wget https://github.com/osmanbaskaya/backups/zipball/master

#noip2
cd /usr/local/src
sudo wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar xzf noip-duc-linux.tar.gz
cd no-ip-2.1.9
make
make install

echo "Backup downloads completed. Check Downloads Folder"






