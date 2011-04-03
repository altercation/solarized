#!/bin/sh

dir=`dirname $0`

# set palette
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/palette `cat $dir/colors/palette`

# set foreground to base00 and background to base3 and highlight color to
# base01
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/background_color `cat $dir/colors/base3`
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/foreground_color `cat $dir/colors/base00`
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/bold_color `cat $dir/colors/base01`
