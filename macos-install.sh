brew install vim
brew install wget

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" # oh-my-zsh

mkdir -p ~/.vimbackup/backup
mkdir -p ~/.vimbackup/swap

cp thorn.zsh-theme ~/.oh-my-zsh/themes/
cp .zshrc .vimrc ~
mkdir -p ~/.vim/colors
cp molokai.vim ~/.vim/colors

git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
