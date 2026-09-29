#!/bin/bash

# penjelasan
# bash -c adalah perintah yang memungkinkan bash untuk mengeksekusi string menjadi sebuah perintah
# misal bash -c "echo 'halo'" maka akan muncul halo
# dalam kasus wl-paste --watch, jika tanpa bash -c
# maka jika ada cliboard baru, hasilnya akan mengambil clipboard lama
# bisa dikatakan jalankan dulu wl-paste
# setelah data diperbarui maka tampilkan di notifikasi 
wl-paste --watch bash -c 'notify-send --urgency=normal "Clipboard" "$(wl-paste)"'
