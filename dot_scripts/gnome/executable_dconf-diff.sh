#!/bin/bash

KEY=$1

clear
chezmoi apply
dconf dump $KEY > pre.txt
echo "Make your changes, then press <ENTER> to continue..."
read
dconf dump $KEY > post.txt
diff pre.txt post.txt;
