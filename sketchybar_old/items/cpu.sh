#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
					  click_script="open /System/Applications/Utilities/Activity\ Monitor.app/" \
                      icon=􀧓  \
                      script="$PLUGIN_DIR/cpu.sh"
