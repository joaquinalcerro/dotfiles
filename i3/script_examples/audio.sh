#!/bin/sh
# Copyright (C) 2018 Minbari

# Color
color1="#6699ff"
color2="#70db70"


# Left click
if [ "${BLOCK_BUTTON}" -eq 1 ]; then
  sysctl hw.snd.default_unit=0 > /dev/null
# Middle click
elif [ "${BLOCK_BUTTON}" -eq 3 ]; then
  sysctl hw.snd.default_unit=1 > /dev/null
fi

output=$(sysctl hw.snd.default_unit | awk '{print $2}')

if [ "${output}" -eq 0 ]; then
  echo ""
  echo ""
  echo "$color1"
else
  echo ""
  echo ""
  echo "$color2"
fi  
