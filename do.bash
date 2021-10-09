#!/bin/bash

gnome-screenshot -a -f /tmp/image-to-voice.png

tesseract /tmp/image-to-voice.png /tmp/image-to-voice --oem 0

cat /tmp/image-to-voice.txt | spd-say -e -w 
