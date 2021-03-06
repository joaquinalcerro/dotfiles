#!/bin/bash

icon=
color="#FFAE00"
color2="#00e600"

IP=$(curl ifconfig.me/ip)

case $BLOCK_BUTTON in
    3) echo "$icon $IP" | xclip
       echo "$icon"
       echo "$color"
      ;;
    *) echo "$icon $IP"
       echo "$icon"
       echo "$color2"
      ;;
  esac
