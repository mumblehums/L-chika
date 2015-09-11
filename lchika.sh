#!/bin/sh

GPIO=4
PUSHTIME=5

#Setting
echo "$GPIO" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio$GPIO/direction
#echo "low" > /sys/class/gpio/gpio$GPIO/direction

#Wait 5second
cnt=0
while [ $cnt -lt $PUSHTIME ] ; do
	echo 1 > /sys/class/gpio/gpio$GPIO/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio$GPIO/value
	sleep 1
done
