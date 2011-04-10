#!/usr/bin/env bash

dir=`dirname $0`

PROFILE="Default"
if [[ $# -ge 1 ]]; then
    PROFILE=$1
fi

# set palette
gconftool-2 -s -t string /apps/gnome-terminal/profiles/$PROFILE/palette `cat $dir/colors/palette`

# set highlighted color to be different from foreground-color
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/$PROFILE/bold_color_same_as_fg false

# set foreground to base0 and background to base03 and highlight color to base1
gconftool-2 -s -t string /apps/gnome-terminal/profiles/$PROFILE/background_color `cat $dir/colors/base03`
gconftool-2 -s -t string /apps/gnome-terminal/profiles/$PROFILE/foreground_color `cat $dir/colors/base0`
gconftool-2 -s -t string /apps/gnome-terminal/profiles/$PROFILE/bold_color `cat $dir/colors/base1`

# make sure the profile is set to not use theme colors
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/$PROFILE/use_theme_colors false
