Solarized - iTerm2 Color Presets
================================

### [See official homepage for full content](http://ethanschoonover.com/solarized)

Installation
------------

Download current build of iTerm 2 from: <http://www.iterm2.com/>

NOTE: Only builds 480 (Jan 11 2011) and later support import of color schemes.
If the stable release doesn't include this function, grab the nightly build
from: <http://code.google.com/p/iterm2/downloads/list>

Open iTerm 2, open Preferences, click on the "Profiles" (formerly Addresses,
formerly Bookmarks) icon in the preferences toolbar, then select the "colors"
tab. Click on the "Color Presets" ("Load Presets" in earlier versions) menu and select "import...". Select the Solarized
Light or Dark theme file.

You have now loaded the Solarized color presets into iTerm 2, but haven't yet
applied them. To apply them, simply select an existing profile from the profile
list window on the left, or create a new profile. Then select the Solarized
Dark or Solarized Light preset from the "Color Presets" ("Load Presets" in earlier versions) menu drop down.

Ok, I've gone crazy with iTerm2 color management but you are going to be ok.
Just realize two things:

1. Like other apps (Chrome as of this writing) on the Mac, iTerm2 locks in
   a target color space when you create a new window. If you switch your
   monitor color space, relaunch iTerm2 and it will pick up the new target
   color space.

2. The colors in iTerm2 currently cannot be device colors. They are baked in as
   generic rgb (which, despite the name, is an actual, specific color space
   from Apple and is used as a default just like other systems use sRGB as
   a default). I've switch Solarized Apple Color Picker palettes to use tagged
   colors by default, so for the most part iTerm2 will match up with other apps
   where you use Color Picker swatches.

The Values
----------

L\*a\*b values are canonical (White D65, Reference D50), other values are
matched in sRGB space.

    SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
    --------- ------- ---- -------  ----------- ---------- ----------- -----------
    base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
    base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
    base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
    base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
    base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
    base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
    base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
    base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
    yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
    orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
    red       #d30102  1/1 red      124 #af0000 45  70  60 211   1   2   0  99  83
    magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
    violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
    blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
    cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
    green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
