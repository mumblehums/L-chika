#!/bin/sh
GPIO1=4
GPIO2=22
GPIO3=25

#Setting
echo "$GPIO1" > /sys/class/gpio/export
echo "$GPIO2" > /sys/class/gpio/export
echo "$GPIO3" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio$GPIO1/direction
echo "out" > /sys/class/gpio/gpio$GPIO2/direction
echo "out" > /sys/class/gpio/gpio$GPIO3/direction

while [ true ] ; do
	echo 1 > /sys/class/gpio/gpio$GPIO1/value
	echo 0 > /sys/class/gpio/gpio$GPIO2/value
	echo 0 > /sys/class/gpio/gpio$GPIO3/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio$GPIO1/value
	echo 1 > /sys/class/gpio/gpio$GPIO2/value
	echo 0 > /sys/class/gpio/gpio$GPIO3/value
	sleep 1
	echo 0 > /sys/class/gpio/gpio$GPIO1/value
	echo 0 > /sys/class/gpio/gpio$GPIO2/value
	echo 1 > /sys/class/gpio/gpio$GPIO3/value
	sleep 1
	echo 1 > /sys/class/gpio/gpio$GPIO1/value
	echo 0 > /sys/class/gpio/gpio$GPIO2/value
	echo 0 > /sys/class/gpio/gpio$GPIO3/value
	sleep 1
done
