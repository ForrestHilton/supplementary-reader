#!/bin/bash

image_name="$(ls -u ~/Pictures/ | head -n 1)"

tesseract ~/Pictures/"$image_name" /tmp/image-to-voice --oem 0

cat /tmp/image-to-voice | tr '\\n' " " > /tmp/image-to-voice
espeak-ng "$(cat /tmp/image-to-voice.txt)" && trash ~/Pictures/"$image_name"

