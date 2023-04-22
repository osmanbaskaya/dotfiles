ls
ls
ls
pwd
cd
ls
ssh
ls
cd
ls
mkdir playground
cd playground/
git clone https://github.com/osmanbaskaya/dotfiles.git
exit
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh
zsh
ls
brew install byobu
shutdown -h 5
sudo shutdown -h 5
sudo shutdown
man shutdown
sudo shutdown -h 10:18
sudo shutdown -h 10:22
sudo shutdown -h 10:30
zsh
s
ls
ls
cd
cd playground/
ls
ls
ls
ls -lrth
ls
git clone https://github.com/osmanbaskaya/dotfiles
ls
ls
cd dotfiles/
ls
ls -a
cp .vimrc .zshrc .gitconfig ~
ls
vim installation2.sh 
ls
cd ..
cd
ls
git clone https://github.com/robbyrussell/oh-my-zsh.git
ls
cd oh-my-zsh/
ls
bash oh-my-zsh.sh 
chmod +x oh-my-zsh.sh 
./oh-my-zsh.sh 
zsh
{   54 ### Kube Controller-manager                                                                       b   "CN": "system:kube-proxy",;   55 - Server Public IP (LB fronting API Server)                                                       b   "key": {
  56 - CA                                                                                              b     "algo": "rsa",
  57 - Kube Controller Manager certificate and key                                                     b     "size": 2048
  58                                                                                                   b   },
  59 ### Kube-Scheduler                                                                                b   "names": [
  60 - Server Public IP (LB fronting API Server)                                                       b     {
  61 - CA                                                                                              b       "C": "US",
  62 - Kube-proxy certificate and key                                                                  b       "L": "Portland",
  63                                                                                                   b       "O": "system:node-proxier",
  64 ### Admin user                                                                                    b       "OU": "Kubernetes The Hard Way",
  65            65            65            65            65            65            65            6  b       "ST": "Oregon"
  66 - Ser  66 - Ser  66 - Sfronting API Server)                                                       b     }
{ cat > kube-proxy-csr.json <<EOF;  cfssl gencert   -ca=ca.pem   -ca-key=ca-key.pem   -config=ca-config.json   -profile=kubernetes   kube-proxy-csr.json | cfssljson -bare kube-proxy;  }
black .
black --check */*
black --check --exclude '\.*' .* -v
black --check .
black --check /*
black --check homemade/*
ls
vim pyproject.toml
black --check homemade/*
black --check --exclude homemade/.*yamlhomemade/*
black --check --exclude homemade/.*yaml homemade/*
black --check --exclude homemade/\.*yaml homemade/*
black --check --exclude homemade*yaml homemade/*
black --check --exclude homemade.*yaml homemade/*
black --check --exclude homemade.*.yaml homemade/*
black --check --exclude homemade/*l homemade/*
black --check --exclude homemade/* homemade/*
black --check --exclude homemade/.* homemade/*
black --check --exclude homemade/*.* homemade/*
black --check --exclude homemade homemade/*
black --check --exclude 'homemade' homemade/*
black --check --exclude 'yaml' homemade/*
black --check --exclude '*yaml' homemade/*
black --check --exclude '.*yaml' homemade/*
black --check --exclude '.*.yaml' homemade/*
black --check --exclude '\..yaml' homemade/*
black --check --exclude '\.*yaml' homemade/*
black --check --exclude '/homemade/' homemade/*
black --check --exclude '/*.yaml/' homemade/*
black --check --exclude '/.*yaml/' homemade/*
black --check --exclude '/*log*/' homemade/*
black --check --exclude '/.*log.*/' homemade/*
eval "$(ssh-agent -s)"
eval "$(ssh-agent -s)"
ssh-copy-id
ssh-copy-id obaskaya@delucia
sudo service ssh restart
git clone git@github.com:osmanbaskaya/homemade.git
git clone https://github.com/osmanbaskaya/homemade.git
ls
git clone git@github.com:osmanbaskaya/homemade.git
ls
rm -rf homemade/
ls
sshd
eval "$(ssh-agent -s)"
sh
git diff
git
git diff
git diff --stat
git diff --stat | tail -1
git diff --shortstat | tail -1
git diff --shortstat 
git diff --shortstat 
git diff --shortstat
git diff --shortstat | grep '\d'
git diff --shortstat | grep '\d+'
git diff --shortstat | egrep '\d+'
git diff --shortstat | egrep -o '\d+x'
git diff --shortstat | egrep -o '\d+' | tr '\n'
git diff --shortstat | egrep -o '\d+' | tr '\n' '-'
git diff --shortstat | egrep -o '\d+' | tr '\n' '-'
git diff --shortstat | egrep -o '\d+' | tr '\n' ' '
