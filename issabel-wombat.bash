#!/bin/bash

yum install issabel-callcenter

yum install -y ca-certificates

wget https://yum.loway.ch/loway.repo -O /etc/yum.repos.d/loway.repo

yum install wombat
