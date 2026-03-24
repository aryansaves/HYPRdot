#!/bin/bash

lock_clock=$(nvidia-smi -q -d CLOCK | grep "Graphics" | head -n1 | awk '{print $3}')

if [[ "$lock_clock" -le 420 ]]; then
    echo '{"text":"󰌪","class":"powersave","tooltip":"Super Power Save Active"}'
else
    echo '{"text":"󱐋","class":"performance","tooltip":"Performance Mode"}'
fi
