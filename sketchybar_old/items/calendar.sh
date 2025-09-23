#!/bin/bash

sketchybar --add item calendar right \
           --set calendar update_freq=30 \
						  label.padding_left=0 \
						  icon.padding_left=0 \
                          script="$PLUGIN_DIR/calendar.sh"
