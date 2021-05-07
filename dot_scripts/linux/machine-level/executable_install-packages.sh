#!/bin/bash

PACKAGES="
git base-devel ntfs-3g
gnome firefox
kitty starship rofi
nodejs go
keepassxc

gnome-tweaks ttf-jetbrains-mono
arc-icon-theme arc-solid-gtk-theme
ttf-bitstream-vera ttf-croscore ttf-droid ttf-ibm-plex
ttf-roboto noto-fonts ttf-fira-sans
ttf-fira-code ttf-fira-mono adobe-source-code-pro-fonts
"
sudo pacman -S --needed --noconfirm $PACKAGES

AUR_PACKAGES="
visual-studio-code-bin
bibata-cursor-theme-bin
ttf-windows ttf-ms-fonts
"
yay -S --needed --noconfirm $AUR_PACKAGES
