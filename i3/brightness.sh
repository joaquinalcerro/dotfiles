#!/bin/bash

bright_level=$(sudo cat /sys/class/backlight/intel_backlight/brightness)
step=100

if (($bright_level <= 100)); then
    if [ $1 = "dec" ]; then
      let total=$bright_level
    else
      let total=$bright_level+$step
    fi
fi

if [ $bright_level -ge 101 ] && [ $bright_level -le 750 ]; then
    if [ $1 = "dec" ]; then
      let total=$bright_level-$step
    else
      let total=$bright_level+$step
    fi
fi

if (($bright_level >= 751)); then
    if [ $1 = "dec" ]; then
      let total=$bright_level-$step
    else
      let total=$bright_level
    fi
fi

if [ $total -eq $bright_level ]; then
  exit 0
else
  $(bash -c "echo $total > /sys/class/backlight/intel_backlight/brightness")
  exit 0
fi
