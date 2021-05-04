#!/usr/bin/env bash

apt-get update
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

# test docker installation
docker ps &> /dev/null
if [ $? -eq 0 ]; then
    echo "docker daemon is ready!"
else
    echo "docker daemon installed failed!"
    exit -1
fi
