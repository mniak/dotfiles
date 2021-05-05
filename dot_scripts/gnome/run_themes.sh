#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234
[desktop/interface]
cursor-theme='Bibata-Modern-Ice'
gtk-theme='Arc-Darker'
icon-theme='Arc'
monospace-font-name='JetBrains Mono 10'

DELIMITER-1234

# dconf dump /org/gnome/
echo "$CONTENT" | dconf load /org/gnome/