#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234
[desktop/interface]
cursor-theme='Bibata-Modern-Ice'
gtk-theme='Arc-Dark-solid'
icon-theme='Arc'
monospace-font-name='JetBrains Mono 10'
DELIMITER-1234
echo "$CONTENT" | dconf load /org/gnome/

read -r -d '' CONTENT << DELIMITER-1234
[settings/file-chooser]
sort-directories-first=true
DELIMITER-1234
echo "$CONTENT" | dconf load /org/gtk/