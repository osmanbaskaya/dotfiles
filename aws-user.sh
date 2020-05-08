adduser $1
usermod -aG sudo $1

sudo addgroup users
sudo adduser $1 users
