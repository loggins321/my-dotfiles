#!/bin/bash

export LANG=id_ID.UTF-8

#load custom config
killall mako 2>/dev/null
mako -c ~/.config/mako/config-date &

tanggal=$(date '+%A, %d %B %Y')
notify-send -t 2200 "$tanggal"

sleep 2.2

# kembalikan config mako ke global
killall mako 2>/dev/null
mako -c ~/.config/mako/config &