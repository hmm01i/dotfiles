#!/bin/bash

## Get the "Device name" or ID number
## for Finger Touch from 'xsetwacom list dev'

DEVICE="Wacom Bamboo 16FG 6x8 Finger touch"   
GESTURE_STATE=`xsetwacom get "$DEVICE" gesture`
if [ "$GESTURE_STATE" == "on" ]
  then
    echo "Touch is ON, turning OFF."
    xsetwacom set "$DEVICE" gesture off
  else
    echo "Touch is OFF, turning ON."
    xsetwacom set "$DEVICE" gesture on
fi
