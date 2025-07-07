#!/bin/bash

#setup
python -m venv ~/src/venv && source ~/src/venv/bin/activate 
LOCATION="KNYC"
weather -v $LOCATION > temp_weather.txt

#get weather
WTEMP=$(cat temp_weather.txt | grep Temp)
WDEW=$(cat temp_weather.txt | grep Dew)
#output weather
OUTPUT="$LOCATION Conditions $WTEMP $WDEW"
echo "$OUTPUT"
meshtastic --ch-index 0 --sendtext "$OUTPUT"
