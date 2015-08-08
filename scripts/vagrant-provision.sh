#!/bin/bash -eux

for i in "$@"
do
	if [ -d "/vagrant/scripts/${i}" ]
	then
 		install=/vagrant/scripts/${i}/install.sh
	else
		install=/vagrant/scripts/${i}.sh
	fi

	chmod +x $install && eval $install
done
