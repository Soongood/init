#!/bin/sh

USER = $(whoami)
UID = $(grep $USER /etc/passwd | awk -F: '{print $3}')

sudo deluser --remove-all-files $USER
sudo userdel -f $USER
pkill -u $UID
