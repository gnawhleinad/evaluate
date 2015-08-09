#!/bin/bash -eux

cd /vagrant/scripts

docker build -t evaluate/node-onbuild .
