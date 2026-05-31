#!/bin/sh
export DISPLAY=:0

DATE=$(/bin/date +'%a - %Y.%m.%d | %I:%M %p')

ROOT="$DATE"
xsetroot -name "$ROOT"
