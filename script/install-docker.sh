#!/usr/bin/env bash

echo "++++++++++++++++++++++++++++++++"
echo " Now install Docker"
echo "++++++++++++++++++++++++++++++++"

# Update the packages
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88, 
# by searching for the last 8 characters of the fingerprint.
sudo apt-key fingerprint 0EBFCD88 

# Set up the stable repository to download docker
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index
sudo apt-get update 

# Install the latest version of Docker Engine and containerd
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# 
# To uninstall docker do the following
# sudo apt-get purge docker-ce docker-ce-cli containerd.io
# The downloaded images are not removed by default
# To delete all the images, containers and volumens
# sudo rm -rf /var/lib/docker
#

# Create the docker group (if it doesn't exist)
sudo groupadd docker

# Add vagrant user to the docker group
sudo usermod -aG docker vagrant 

# Activate the changes to groups
sudo newgrp docker

echo "++++++++++++++++++++++++++++++++"
echo "Completed Docker Installation   "
echo "++++++++++++++++++++++++++++++++"

