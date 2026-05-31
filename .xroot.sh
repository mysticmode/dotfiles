#!/bin/sh
export DISPLAY=:0

DATE=$(/bin/date +'%a - %Y.%m.%d | %I:%M %p')
WiFi=$(iwgetid -r)

ROOT="<i> $WiFi | $DATE"
xsetroot -name "$ROOT"
