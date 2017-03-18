#!/bin/bash

WIDTH=$1
HEIGHT=$2
DENSITY=$3

if [ -z $WIDTH ]; then
    echo "No width specified."
    exit 1
fi
if [ -z $HEIGHT ]; then
    echo "No height specified."
    exit 1
fi
if [ -z $DENSITY ]; then
    echo "No density specified."
    exit 1
fi

#expecting usage of phone, not tablet
if [ "$WIDTH" -gt "$HEIGHT" ]; then
    AUX=$WIDTH
    WIDTH=$HEIGHT
    HEIGHT=$AUX
fi

adb shell wm size ${WIDTH}x${HEIGHT}
adb shell wm density $DENSITY
