## START with this
# adduser obaskaya

## Mounting the f*cking volume.
file -s /dev/xvdf
usermod -aG sudo username
mkfs -t xfs /dev/xvdf
mkdir /data
mount /dev/xvdf /data
chown -R obaskaya /data
ln -s /data /home/obaskaya/data

## Make this default
# sudo blkid
# sudo lsblk -o +UUID
# UUID=aebf131c-6957-451e-8d34-ec978d9581ae  /data  xfs  defaults,nofail  0  2 --> add this to /etc/fstab

## Python stuff
apt-get install python3-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
pip install virtualenv
ln -s /usr/bin/python3 /usr/bin/python

## Docker on Ubuntu 
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $$(lsb_release -cs) \
       stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
docker run hello-world
# Change the docker default image installation path
# Ubuntu/Debian: edit your /etc/default/docker file with the -g option: DOCKER_OPTS="-dns 8.8.8.8 -dns 8.8.4.4 -g /mnt"
sudo usermod -aG docker obaskaya # re-login necessary
sudo service docker restart
# changing default path of docker images: 
# https://linuxconfig.org/how-to-move-docker-s-default-var-lib-docker-to-another-directory-on-ubuntu-debian-linux

# aws credentials
# https://stackoverflow.com/questions/33297172/boto3-error-botocore-exceptions-nocredentialserror-unable-to-locate-credential
