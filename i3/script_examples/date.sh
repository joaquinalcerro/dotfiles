#!/bin/sh

case $BLOCK_BUTTON in
  1) notify-send "$(cal)";;
esac

date '+%b-%d %I:%M'
