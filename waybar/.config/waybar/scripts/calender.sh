#!/bin/bash

declare -A bulan=(
    [01]="januari"
    [02]="februari"
    [03]="maret"
    [04]="april"
    [05]="mei"
    [06]="juni"
    [07]="juli"
    [08]="agustus"
    [09]="september"
    [10]="oktober"
    [11]="november"
    [12]="desember"
)

now=$(date +%m)

if [[ -v bulan[$now] ]]; then
        firejail qutebrowser --target window https://kalenderku.id/${bulan[$now]}-2026
    else
        firejail qutebrowser --target window https://kalenderku.id/
fi