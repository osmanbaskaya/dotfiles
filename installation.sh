#!/bin/bash

### VIM related ###
VIM=$HOME/.vim_runtime
git clone --depth=1 https://github.com/amix/vimrc.git $VIM
mkdir -p $VIM/colors
cp molokai.vim $VIM/colors
bash $VIM/install_awesome_vimrc.sh
cp ob.vim $VIM/vimrcs/
git clone https://github.com/scrooloose/nerdcommenter.git $VIM/my_plugins/nerdcommenter.git

### zsh related ###
sh -c "$(curl -fsSL https://raw.github.com/osmanbaskaya/oh-my-zsh/master/tools/install.sh)"
cp thorn.zsh-theme ~/.oh-my-zsh/themes/
cp .zshrc ~

# fish like autocomplete
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

#chsh -s `which zsh`
echo "Backup downloads completed. Check Downloads Folder"

# inputrc
ln -s .inputrc ~/.inputrc

### byobu config copy. ###
set +e
mkdir -p $HOME/.byobu
cp byobu.tmux.conf ~/.byobu/tmux.conf
mkdir -p $HOME/.config/byobu/
cp byobu.tmux.conf $HOME/.config/byobu/.tmux.conf
set -e
