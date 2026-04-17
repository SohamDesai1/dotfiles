#!/bin/bash

input=$(wofi --show dmenu --prompt "Search...")

[ -z "$input" ] && exit

engine=$(echo "$input" | awk '{print $1}')
query=$(echo "$input" | cut -d' ' -f2- | sed 's/ /+/g')

case "$engine" in
  g) brave "https://google.com/search?q=$query" ;;
  d) brave "https://duckduckgo.com/?q=$query" ;;
  gh) brave "https://github.com/search?q=$query" ;;
  yt) brave "https://youtube.com/results?search_query=$query" ;;
  *)
    encoded=$(echo "$input" | sed 's/ /+/g')
    brave "https://google.com/search?q=$encoded"
    ;;
esac
