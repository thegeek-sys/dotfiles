#!/usr/bin/env bash

APP="Alacritty"
BUNDLE_ID="org.alacritty"
SCRIPT='
tell application "System Events"
    set appExists to (exists process "'"$APP"'")
    if appExists then
        tell application "'"$APP"'"
            if visible of front window is true then
                set visible of every window to false
                quit
            else
                activate
            end if
        end tell
    else
        tell application "'"$APP"'"
            activate
        end tell
    end if
end tell
'
osascript -e "$SCRIPT"

