#!/bin/bash

gid="$1" # ID dari downloader aria2
num="$2" # Jumlah file yang di download (aria2 mendukung multifile)
path="" # tujuan dan nama file

x=$(basename "$path")

notify-send -a aria2c "Downloading" "$(echo "$x")"