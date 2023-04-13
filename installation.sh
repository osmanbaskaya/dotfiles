#!/bin/bash

### VIM related ###
VIM=$HOME/.vim_runtime
git clone --depth=1 https://github.com/amix/vimrc.git $VIM
mkdir -p $VIM/colors
cp molokai.vim $VIM/colors
bash $VIM/install_awesome_vimrc.sh
cp ob.vim $VIM/vimrcs/

# plugins
git clone https://github.com/scrooloose/nerdcommenter.git $VIM/my_plugins/nerdcommenter.git
git clone https://github.com/stephpy/vim-yaml.git $VIM/my_plugins/vim-yaml.git
git clone https://github.com/sjl/gundo.vim $VIM/my_plugins/gundo.git


### zsh related ###
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp thorn.zsh-theme ~/.oh-my-zsh/themes/
cp .zshrc ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# fish like autocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
cp .gcloud-project.txt $HOME

# thefuck
brew install thefuck

chsh -s `which zsh`
echo "Backup downloads completed. Check Downloads Folder"

# inputrc
ln -s .inputrc ~/.inputrc

### byobu config copy. ###

brew install byobu
set +e
mkdir -p $HOME/.byobu
cp byobu.tmux.conf ~/.byobu/tmux.conf
mkdir -p $HOME/.config/byobu/
cp byobu.tmux.conf $HOME/.config/byobu/.tmux.conf
set -e

# Git diff setup
brew install diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

brew install jid
brew install httpie
brew install jq
brew install fzf
brew install broot

brew tap cantino/mcfly
brew install mcfly

brew install zoxide
brew install grep  # ggrep
brewn install npm
