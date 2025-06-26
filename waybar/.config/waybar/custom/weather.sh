#!/bin/bash

API_KEY="5fc89e2efffc85acd10bde83aac53b64"
CITY_ID="4671240"  # You can get your city ID from https://openweathermap.org/find
UNITS="imperial"  # Use "imperial" for Fahrenheit

weather=$(curl -sf "https://api.openweathermap.org/data/2.5/weather?id=$CITY_ID&appid=$API_KEY&units=$UNITS")
if [ ! "$weather" ]; then
  echo "󰖐 N/A"
  exit 1
fi

temp=$(echo "$weather" | jq '.main.temp' | cut -d '.' -f1)
condition=$(echo "$weather" | jq -r '.weather[0].main')

# Map condition to icon (customize to your taste)
case $condition in
  Clear) icon="󰖙";;
  Clouds) icon="󰖐";;
  Rain) icon="󰖖";;
  Drizzle) icon="󰖗";;
  Thunderstorm) icon="󰼲";;
  Snow) icon="󰼶";;
  Mist | Fog | Haze) icon="󰖑";;
  *) icon="󰖐";;
esac

echo "$icon ${temp}°F"
