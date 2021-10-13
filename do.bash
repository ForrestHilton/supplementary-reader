#!/bin/bash

rm /tmp/image-to-text-pause

gnome-screenshot -a -f /tmp/image-to-voice.png

tesseract /tmp/image-to-voice.png /tmp/image-to-voice --oem 0

python3 ~/Projects/image-to-voice/do.py
