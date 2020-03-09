#!/bin/bash
# Give a battery name (e.g. BAT0) as an argument.

# get xresources colors
# for x in "$(xrdb -query | sed "s/.*\./export /g;s/:\s*/=\"/g;s/$/\"/g")"; do eval "$x"; done

case $BLOCK_BUTTON in
    2) pgrep -x dunst >/dev/null && notify-send "<b>🔋 Battery module:</b>
🔋: discharging
♻: stagnant charge
: charging
⚡: charged
❗: battery very low!
- Text color reflects charge left" ;;
esac

# capacity=$(cat /sys/class/power_supply/"$1"/capacity) || exit
# status=$(cat /sys/class/power_supply/"$1"/status)
capacity=$(upower -i /org/freedesktop/UPower/devices/$1 | grep percentage | awk '{print int($2)}')
status=$(upower -i /org/freedesktop/UPower/devices/$1 | grep state | awk '{print $2}')

if [ $capacity -ge 75 ]; then
	color="white"
elif [ $capacity -ge 50 ]; then
	color="yellow"
elif [ $capacity -ge 25 ]; then
	color="magenta"
else
	color="red"
	warn="❗"
fi

[ -z $warn ] && warn=" "

[ "$status" = "Charging" ] && color="$color15"

printf "<span color='%s'>%s%s%s</span>" "$color" "$(echo "$status" | sed -e "s/,//g;s/discharging/🔋/;s/charging//;s/unknown/♻️/;s/fully-charged/⚡/;s/ 0*/ /g;s/ :/ /g")" "$warn" "$(echo "$capacity" | sed -e 's/$/%/')"
# printf "<span color='%s'>%s%s%s</span>" "$color" "$(echo "$status" | sed -e "s/,//g;s/Discharging/🔋/;s/Charging/🔌/;s/Unknown/♻️/;s/Full/⚡/;s/ 0*/ /g;s/ :/ /g")" "$warn" "$(echo "$capacity" | sed -e 's/$/%/')"
