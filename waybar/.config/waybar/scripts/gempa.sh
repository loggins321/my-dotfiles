#!/bin/bash

gempa=$(curl -s https://data.bmkg.go.id/DataMKG/TEWS/autogempa.json | 
        jq -r '.Infogempa.gempa | "Gempa, Magnitudo \(.Magnitude)"')

note=$(curl -s https://data.bmkg.go.id/DataMKG/TEWS/autogempa.json | 
        jq -r '.Infogempa.gempa | "\(.Wilayah) \rDirasakan = \(.Dirasakan)"')

jq -nc --arg text "$gempa" --arg tooltip "$note" '{text:$text,tooltip:$tooltip}'
 
if grep -q "Lumajang" <<< "$note"; then
        notify-send --urgency=critical " GEMPA DIRASAKAN" "SEGERA EVAKUASI"
fi

