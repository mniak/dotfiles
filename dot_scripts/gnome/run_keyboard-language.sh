#!/bin/bash

read -r -d '' CONTENT << DELIMITER-1234

[input-sources]
sources=[('xkb', 'br')]

DELIMITER-1234

echo "$CONTENT" | dconf load /org/gnome/desktop/