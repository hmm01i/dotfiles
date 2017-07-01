#!/bin/bash

## Get the "Device name" or ID number
## for touch from 'xsetwacom list dev'

DEVICE="Wacom Bamboo 16FG 6x8 Finger touch"   
TOUCH_STATE=`xsetwacom get "$DEVICE" touch`
if [ "$TOUCH_STATE" == "on" ]
  then
    echo "Touch is ON, turning OFF."
    xsetwacom set "$DEVICE" touch off
  else
    echo "Touch is OFF, turning ON."
    xsetwacom set "$DEVICE" touch on
fi
