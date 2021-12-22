supplementary-reader is a simple screen reading tool for Linux users with slow or dyslexic reading. It can use either OCR (image to text) on a section of the screen, or it can use text selection. 


# Install #

/usr/local/bin
# Usage #
hear are the three usages: 

supplementary-reader speak selection [speed]
supplementary-reader speak screenshot [speed]
supplementary-reader stop

speed is in words per minute and defaults to 225

# Dependency's #

* xorg (sort of)
* xclip
* espeak (in the current version)
* gnome-screenshot (gnome is not required)
* tesseract
* bash

# Recommended Shortcuts #

YOU ARE RESPONSIBLE FOR CONFIGURING SHORTCUTS on your operating system; however on kde, you can import shortcuts.khotkeys in shortcut settings. These are my recommendations:

Ctrl-Alt-Shift-S      supplementary-reader speak screenshot 150
Ctrl-Alt-S            supplementary-reader speak selection 150
Ctrl-Alt-Shift-F      supplementary-reader speak screenshot 225
Ctrl-Alt-F            supplementary-reader speak selection 225
Ctrl-Alt-Shift-D      supplementary-reader stop
Ctrl-Alt-D            supplementary-reader stop

# Contributing #

Even bad contributions are welcome. Especially feel free to add optional or alternative dependencies. This is a really small script, so don't even worry about backwards compatibility. With that said I don't guarantee that I will merge anything. 

If you get speech dispatcher to work consistently, you can completely replace the espeak dependency.

