#!/bin/sh

if pgrep -x "caffeinate" > /dev/null; then
    sketchybar --set $NAME icon="􁚮" drawing=on
else
	sketchybar --set $NAME drawing=off
fi
