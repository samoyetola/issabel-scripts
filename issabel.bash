#!/bin/bash

#create local functions
echo “LANG=“en_US.UTF-8” > /etc/environment
echo “LC_ALL=“en_US.UTF-8" >> /etc/environment	

cat /etc/environment	

#Update the Server and install dependencies
yum update

sudo yum -y install wget vim  net-tools nano

sudo yum -y groupinstall "Development Tools"


#issabel installation
wget -O - http://repo.issabel.org/issabel4-netinstall.sh | bash

