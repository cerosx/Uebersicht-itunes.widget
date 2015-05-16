#!/bin/bash

state=$(osascript -e 'tell application "iTunes" to player state as string' 2>/dev/null);
track=$(osascript -e 'tell application "iTunes" to name of current track as string' 2>/dev/null);
echo '{"state":"'$state'","track":"'$track'"}';
