#!/bin/bash

#Disable SELinux and reboot for changes to take effect

sudo setenforce 0

sudo sed -i ‘s/\(^SELINUX=\).*/\SELINUX=disabled/’ /etc/selinux/config

reboot
