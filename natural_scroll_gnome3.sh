#!/bin/sh
DEV_NO=`xinput list | grep "SynPS/2 Synaptics TouchPad" | sed 's/.*id=\([0-9]*\).*/\1/g'`
PROP_NO=`xinput list-props ${DEV_NO} | grep "Synaptics Scrolling Distance" | sed 's/.*(\([0-9]*\)).*/\1/g'`
xinput set-prop ${DEV_NO} ${PROP_NO} -106 -106
