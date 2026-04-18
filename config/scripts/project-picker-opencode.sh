#!/bin/bash

BASE=~/Coding # Change this to your projects directory

dir=$(find "$BASE" -maxdepth 2 -type d | sed "s|$BASE/||" | wofi --dmenu -p "Select project")

[ -n "$dir" ] && kitty --title opencode -e fish -lc "cd $BASE/$dir && opencode"