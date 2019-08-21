brew install vim
brew install wget
brew install tree
brew install htop

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp thorn.zsh-theme ~/.oh-my-zsh/themes/
cp .zshrc .vimrc ~

git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

### VIM related ###
VIM='$HOME/.vim_runtime'
git clone --depth=1 https://github.com/amix/vimrc.git $VIM
bash $VIM/install_awesome_vimrc.sh
mkdir -p $VIM/colors
cp molokai.vim $VIM/colors
# Nerd Commenter
git clone https://github.com/scrooloose/nerdcommenter.git $VIM/my_plugins/nerdcommenter


### byobu config copy. ###
cp byobu.tmux.conf ~/.byobu/tmux.conf
mkdir -p $HOME/.config/byobu/
cp byobu.tmux.conf $HOME/.config/byobu/.tmux.conf
