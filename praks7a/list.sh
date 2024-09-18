#!/bin/bash
# Küsib nime
echo -n "Sisesta kataloogi asukoht/nimi: "
read directory

if [ ! -d $directory ]; then
	echo "Viga: $directory nimelist kataloogi ei leitud!"
	exit 1

cd $directory

fi
file_count=0
dir_count=0
link_count=0
for item in *; do
    if [ -f "$item" ]; then
        echo "$item: fail"
        ((file_count++))
    elif [ -d "$item" ]; then
        echo "$item: kataloog"
        ((dir_count++))
    elif [ -L "$item" ]; then
        echo "$item: link"
        ((link_count++))
    fi
done
echo
echo "Selles kataloogis on $file_count failid, $dir_count kataloogid ja $link_count linkid."
