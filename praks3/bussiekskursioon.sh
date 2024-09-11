#! /bin/bash

echo "Sisesta reisjate arv: "
read reisjate_arv

echo "Sisesta mitu inimest mahub ühte bussi: "
read bussi_mahutavus

bussid=$(($reisjate_arv/$bussi_mahutavus))
maha_jaanud=$((reisjate_arv % bussi_mahutavus))
echo "Busse täideti $bussid tk."
echo "Maha jäi $maha_jaanud inimest"
