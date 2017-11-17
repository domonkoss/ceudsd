#!/bin/bash

useradd --shell /bin/bash $1
mkdir /home/$1
cp -rT /etc/skel /home/$1
chown -R $1:$1 /home/$1
