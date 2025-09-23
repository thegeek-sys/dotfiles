#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
				 click_script="open x-apple.systempreferences:com.apple.Sound" \
           --subscribe volume volume_change \
