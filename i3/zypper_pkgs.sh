#!/bin/bash

LINES=$(zypper list-updates | grep "|" | wc -l)
PKGS=$(( $LINES - 1 ))

if (( $PKGS > 0 )) then
  echo "$PKGS"
fi

case $BLOCK_BUTTON in
  1) konsole --noclose -e zypper list-updates
     echo "$PKGS"
     exit ;;
  *) echo "$PKGS" ;;
esac
