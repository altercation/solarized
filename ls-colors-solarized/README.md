# Solarized dircolors / ls colors

## Files
  * `dircolors.256dark` - dark solarized theme for 256 color terminals (by [seebi](https://github.com/seebi))

## Usage
These dircolors database files uses solarized colors instead of the given
terminal emulator palette. To use it, run this 

    eval `dircolors /path/to/dircolorsdb`

Typically, this file is copied or linked to `~/.dir_colors`.

### 256 color schemes
To be able to use it, you need a 256 color terminal (e.g. gnome-terminal or
urxvt) and a correct `TERM` variable, e.g.:

    export TERM=xterm-256color  # for common 256 color terminals
    export TERM=screen-256color # for a tmux -2 session

## Features / Properties
  * solarized :-)
  * comment style for backup and log files
  * highlighted style for files of special interest (.tex, .pdf, ...)
  * bold hierarchies:
    * archive = violet, compressed archive = violet + bold
    * audio = orange, video = orange + bold
  * special files (block devices, pipes, ...) are inverted using the
    solarized light pallette for the background

## Screenshots

### 256dark theme
Here are screenshots of common and not so common use-cases.
They are captured from a gnome-terminal using the [dz-version of the awesome Inconsolata font](http://nodnod.net/2009/feb/12/adding-straight-single-and-double-quotes-inconsola/).

#### Common colors in action
Executables, archives, audio/video stuff, dead links

![common use-cases](https://github.com/seebi/solarized/raw/ls-colors/ls-colors-solarized/screenshots/256dark-common.png)

#### Use-Case: Latex directory
tex-trash is in comment style and pdf+tex are main files of interest and
highlighted.

![common use-cases](https://github.com/seebi/solarized/raw/ls-colors/ls-colors-solarized/screenshots/256dark-latex.png)

#### All colors in action
uncommon stuff like pipes and block devices ...

![not so common use-cases](https://github.com/seebi/solarized/raw/ls-colors/ls-colors-solarized/screenshots/256dark-all.png)


