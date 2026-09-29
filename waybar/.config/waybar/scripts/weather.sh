#!/bin/bash

# author Andre
# Api from BMKG

# memfilter data json dari BMKG untuk mengambil nama desa dan cuaca
cuaca=$(curl -s https://api.bmkg.go.id/publik/prakiraan-cuaca?adm4=35.08.11.2006 | 
    jq -r '.data[0] | "\(.lokasi.desa) \(.cuaca[0][0].t)°c"')

# mengambil kode weather dari json
weather=$(curl -s https://api.bmkg.go.id/publik/prakiraan-cuaca?adm4=35.08.11.2006 | 
    jq -r '.data[0] | "\(.cuaca[0][0].weather)"')

# menentukan icon yang akan ditampilkan
case "$weather" in
    0|1) gambar="󰖙" ;;
    2) gambar="󰖕" ;;
    3) gambar="󰖐" ;;
    10) gambar="󰼰" ;;
    45) gambar="󰖑" ;;
    *) gambar="󰖐" ;;
esac 

x="$gambar $cuaca"
final=$(echo "$x" | awk '{print $2":", $1, $3}')
echo {\"text\":\"$final\"}