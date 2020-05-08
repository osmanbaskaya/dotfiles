## Mounting the f*cking volume.
file -s /dev/xvdf
mkfs -t xfs /dev/xvdf
mkdir /data
mount /dev/xvdf /data
chown -R users /data
ln -s /data /home/obaskaya/data

## Make this default
# sudo blkid
# sudo lsblk -o +UUID
# UUID=aebf131c-6957-451e-8d34-ec978d9581ae  /data  xfs  defaults,nofail  0  2 --> add this to /etc/fstab

# Basic useful stuff
apt-get install -y \
    vim \
    members \
    htop \
    byobu \
    mosh

mosh-server


## Python stuff
apt-get install -y python3-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
pip install virtualenv
ln -s /usr/bin/python3 /usr/bin/python

## Docker on Ubuntu
apt-get update
apt install -y docker.io

systemctl start docker
systemctl enable docker

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

docker run hello-world

# Change the docker default image installation path
# Ubuntu/Debian: edit your /etc/default/docker file with the -g option: DOCKER_OPTS="-dns 8.8.8.8 -dns 8.8.4.4 -g /mnt"
sudo usermod -aG docker obaskaya # re-login necessary
sudo usermod -aG docker kerem # re-login necessary
sudo service docker restart
docker --version

# changing default path of docker images:
# https://linuxconfig.org/how-to-move-docker-s-default-var-lib-docker-to-another-directory-on-ubuntu-debian-linux

# aws credentials
# https://stackoverflow.com/questions/33297172/boto3-error-botocore-exceptions-nocredentialserror-unable-to-locate-credential

# umount
# sudo lsof +f -- /mnt/data # to understand which processes make the disk busy.

# ssh login - no root
mkdir .ssh
chmod 700 .ssh
touch .ssh/authorized_keys
chmod 600 .ssh/authorized_keys
cat >> .ssh/authorized_keys # print your ssh public key
