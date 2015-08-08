#!/bin/bash -eux

# https://docs.docker.com/installation/centos/

cat >/etc/yum.repos.d/docker.repo << OHANA
[docker]
name=Docker
baseurl=https://yum.dockerproject.org/repo/main/centos/7
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
OHANA

sudo yum install -y docker-engine
sudo service docker start

sudo usermod -aG docker vagrant

sudo chkconfig docker on
