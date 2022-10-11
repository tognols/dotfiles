#!/bin/bash
INPUT=$(echo -e "0.0/1.0" | bemenu -i -p "$1";)
exec sudo /home/tgn/.local/bin/brightness.sh ${INPUT}
