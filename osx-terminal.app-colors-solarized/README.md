Solarized - OS X Terminal.App Settings
======================================

### [See official homepage for full content](http://ethanschoonover.com/solarized)

Installation
------------

Terminal.app doesn't have full color modification support without some effort.  
The following has only been tested on Snow Leopard. See the links below for 
updates. I make no claims as to the effectiveness of these methods. iTerm2 may 
be an easier all roung solution (desptie iTerm 2's terrible color management).

1. Install SIMBL from:
http://www.culater.net/software/SIMBL/SIMBL.php

2. Install updated "TerminalColors" SIMBL plugin
https://github.com/timmfin/terminalcolours
http://github.com/timmfin/terminalcolours/raw/master/TerminalColours-SL-64bit.zip

( see blog post here for details:
http://www.byteengine.net/custom-colors-in-snow-leopard-terminal-64-bit )

The above runs in both 64 bit and 32 bit mode. If you have trouble using it, 
you can also try the older 32-bit mode only TerminalColors plugin below:

http://blog.fallingsnow.net/2009/08/28/fixing-colors-in-terminal-app-on-10-6/
http://cloud.github.com/downloads/evanphx/terminalcolours/TerminalColours-SL.tar.gz
and open in 32 bit mode
cf
https://github.com/evanphx/terminalcolours

xterm-256color variant
----------------------

Terminal.app does not normally support being set to xterm-256color from within 
its preferences. I have modified the two files in the xterm-256color folder to 
specify an xterm-256color $TERM value. This will only work if you have an 
existing terminfo file for xterm-256color.

The advantage of the xterm-256color mode is some better support for background 
toggling. It does not fully support true 256 color mode however.

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
