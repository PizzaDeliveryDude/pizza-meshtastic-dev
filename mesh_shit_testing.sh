#!/bin/bash

#setup
#source ~/src/venv/bin/activate
LOCATION="KNYC"
TIME=$(date)
RAW_WEATHER=$(weather $LOCATION)

#get weather
WTEMP=$(weather $LOCATION | grep Temp)

#output weather
OUTPUT="Conditions at $LOCATION:$WTEMP"
echo "$OUTPUT"
meshtastic --ch-index 0 --sendtext "$OUTPUT"
