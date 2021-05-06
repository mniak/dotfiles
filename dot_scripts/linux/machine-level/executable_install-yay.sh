#!/bin/bash

git clone https://aur.archlinux.org/yay.git /var/tmp/yay-repo
cd /var/tmp/yay-repo
makepkg -si
rm -rf /var/tmp/yay-repo
