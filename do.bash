#!/bin/bash

image_name="$(ls -u ~/Pictures/ | head -n 1)"

tesseract ~/Pictures/"$image_name" /tmp/image-to-voice --oem 0

cat /tmp/image-to-voice.txt | spd-say -e -w && trash ~/Pictures/"$image_name"

