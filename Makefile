create-user-%:
	adduser $*
	usermod -aG sudo $*
	sudo addgroup users
	sudo adduser $1 users
	# Create ssh directory - WIP
	#mkdir .ssh
	#chmod 700 .ssh
	#touch .ssh/authorized_keys
	#chmod 600 .ssh/authorized_keys
	#cat >> .ssh/authorized_keys # print your ssh public key

# Basic useful stuff
install-tools: 
	apt-get install -y \
		vim \
		git \
		members \
		htop \
		byobu \
		mosh

run-mosh:
	mosh-server


install-python:
	## Python stuff
	apt-get install -y python3-distutils
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python3 get-pip.py
	pip install virtualenv
	ln -s /usr/bin/python3 /usr/bin/python

install-docker:
	## Docker on Ubuntu
	apt-get install -y \
		apt-transport-https \
		ca-certificates \
		curl \
		gnupg-agent \
		software-properties-common
	apt-get update
	apt install -y docker.io
	systemctl start docker
	systemctl enable docker
	docker run hello-world
	sudo usermod -aG docker obaskaya # re-login necessary
	sudo usermod -aG docker kerem # re-login necessary
	sudo service docker restart
	docker --version

setup-disk:
	## Mounting the f*cking volume.
	file -s /dev/xvdf
	mkfs -t xfs /dev/xvdf
	mkdir /data
	mount /dev/xvdf /data
	chown -R users /data
	ln -s /data /home/obaskaya/data

setup-secret-hitler:
	docker pull mongo
	git clone https://github.com/cozuya/secret-hitler.git
	#wget https://nodejs.org/dist/v12.16.2/node-v12.16.2-linux-x64.tar.xz
	#tar -xf node-v12.16.2-linux-x64.tar.xz
	docker run -p 27017-27019:27017-27019 -dit mongo
	curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
	sudo apt-get install -y nodejs yarn
	echo "node version: `node --version`"

# sudo lsof -iTCP -sTCP:LISTEN -n -P


# Change the docker default image installation path
# Ubuntu/Debian: edit your /etc/default/docker file with the -g option: DOCKER_OPTS="-dns 8.8.8.8 -dns 8.8.4.4 -g /mnt"

# changing default path of docker images:
# https://linuxconfig.org/how-to-move-docker-s-default-var-lib-docker-to-another-directory-on-ubuntu-debian-linux

# aws credentials
# https://stackoverflow.com/questions/33297172/boto3-error-botocore-exceptions-nocredentialserror-unable-to-locate-credential

# umount
# sudo lsof +f -- /mnt/data # to understand which processes make the disk busy.

# ssh login - no root
