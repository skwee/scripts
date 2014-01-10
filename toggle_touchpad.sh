#!/bin/sh

#main_dev="ImPS/2 ALPS GlidePoint"
main_dev="AlpsPS/2 ALPS DualPoint TouchPad"
devices=("AlpsPS/2 ALPS DualPoint TouchPad" "DualPoint Stick")
state=`xinput --list-props "$main_dev" | grep Enabled | awk '{print $4}'`

for ix in ${!devices[*]}
do
	dev="${devices[$ix]}"
#	state=`xinput --list-props "$dev" | grep Enabled | awk '{print $4}'`
	if [ $state = '1' ]
	then
    	xinput --set-prop --type=int --format=8 "$dev" "Device Enabled" "0"
	else
    	xinput --set-prop --type=int --format=8 "$dev" "Device Enabled" "1"
	fi
done

if [ $state = '1' ]
then
notify-send "Touchpad is Disabled" -i /usr/share/icons/elementary/devices/16/gnome-mouse.svg
else
notify-send "Touchpad is Enabled" -i /usr/share/icons/elementary/devices/16/gnome-mouse.svg
fi
