#!/bin/bash

#create local functions
echo “LANG=“en_US.UTF-8” > /etc/environment
echo “LC_ALL=“en_US.UTF-8" >> /etc/environment	

#Update the Server and install dependencies
yum update

sudo yum -y install wget vim  net-tools

sudo yum -y groupinstall "Development Tools"

yum -y install wget

#issabel installation
wget -O - http://repo.issabel.org/issabel4-netinstall.sh | bash

