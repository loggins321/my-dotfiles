#!/bin/bash

#cek argumen
if [[ -z "$@" ]]; then
    echo "Ketik: yi [Pakage]"
    exit 1
fi

#Load custom konfigurasi mako
killall mako 2>/dev/null 
mako -c ~/.config/mako/config-install &

#perintah istall
if sudo pacman -S "$@"; then
    notify-send -t 1700 -i ~/.config/mako/svg/smile-orange.svg "Pakage" "Berhasil Terinstall"
    mpv --really-quiet ~/.config/mako/audio/mixkit-correct-answer-tone-2870.wav
else  
    notify-send -t 1700 -i ~/.config/mako/svg/sad-yellow.svg "Pakage" "Gagal Install"
    mpv --really-quiet ~/.config/mako/audio/mixkit-tile-game-reveal-960.wav
fi

#Kembalikan konfigurasi mako ke semula
killall mako 2>/dev/null 
mako -c ~/.config/mako/config &