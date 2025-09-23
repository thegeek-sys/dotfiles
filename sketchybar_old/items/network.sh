#!/bin/bash

sketchybar --add item network right \
           --set network update_freq=5 \
				 label.padding_left=0 \
				 icon.padding_left=0 \
				 script="$PLUGIN_DIR/network.sh" \
				 click_script="open /System/Library/PreferencePanes/Network.prefPane/"
