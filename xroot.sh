#!/bin/sh
export DISPLAY=:0

DATE=$(/bin/date +'%a - %Y.%m.%d | %H:%M %p')

ROOT="$DATE"
xsetroot -name "$ROOT"
