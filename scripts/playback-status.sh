#!/bin/sh

status=$(playerctl status)
title=$(playerctl metadata title | cut -d "-" -f 1)
# artist=$(playerctl metadata artist)

song="${title}"

case $status in
  "Playing")
    echo -e "\uead1 ${song}"
  ;;
  "Paused")
    echo -e "\ueb2c ${song}"
  ;;
  "Stopped")
  ;;
esac

