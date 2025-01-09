#!/bin/bash

killall waybar
wal -q -i "$1"
waybar
