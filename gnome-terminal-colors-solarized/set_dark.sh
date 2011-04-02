#!/bin/sh

dir=`pwd`

# set palette
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/palette `cat $dir/colors/palette`

# set foreground to base0 and background to base03 and highlight color to base1
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/background_color `cat $dir/colors/base03`
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/foreground_color `cat $dir/colors/base0`
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/bold_color `cat $dir/colors/base1`
