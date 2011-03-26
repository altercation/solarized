#!/bin/sh
# ---------------------------------------------------------------------
# SOLARIZED color values
# ---------------------------------------------------------------------
# Download palettes and files from: http://ethanschoonover.com/solarized
# 
# SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
# --------- ------- ---- -------  ----------- ---------- ----------- -----------
# base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
# base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
# base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
# base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
# base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
# base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
# base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
# base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
# yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
# orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
# red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
# magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
# violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
# blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
# cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
# green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

cat > palette_dark.tmp <<SETPALETTEDARK
J_base03        ,color234        ,brightblack     ,
J_base02        ,color235        ,black           ,
J_base01        ,color240        ,brightgreen     ,
J_base00        ,color241        ,brightyellow    ,
J_base0         ,color244        ,brightblue      ,
J_base1         ,color245        ,brightcyan      ,
J_base2         ,color254        ,white           ,
J_base3         ,color230        ,brightwhite     ,
J_yellow        ,color136        ,yellow          ,
J_orange        ,color166        ,brightred       ,
J_red           ,color160        ,red             ,
J_magenta       ,color125        ,magenta         ,
J_violet        ,color61         ,brightmagenta   ,
J_blue          ,color33         ,blue            ,
J_cyan          ,color37         ,cyan            ,
J_green         ,color64         ,green           ,
J_bg            ,color234        ,default         ,
J_fg            ,color244        ,default         ,
J_statusfg      ,color241        ,brightyellow    ,
J_statusbg      ,color235        ,black           ,
SETPALETTEDARK
cat > palette_light.tmp <<SETPALETTELIGHT
J_base3         ,color233        ,brightblack     ,
J_base2         ,color234        ,black           ,
J_base1         ,color239        ,brightgreen     ,
J_base0         ,color240        ,brightyellow    ,
J_base00        ,color244        ,brightblue      ,
J_base01        ,color245        ,brightcyan      ,
J_base02        ,color254        ,white           ,
J_base03        ,color230        ,brightwhite     ,
J_yellow        ,color136        ,yellow          ,
J_orange        ,color166        ,brightred       ,
J_red           ,color160        ,red             ,
J_magenta       ,color125        ,magenta         ,
J_violet        ,color61         ,brightmagenta   ,
J_blue          ,color33         ,blue            ,
J_cyan          ,color37         ,cyan            ,
J_green         ,color64         ,green           ,
J_bg            ,color233        ,default         ,
J_fg            ,color240        ,default         ,
J_statusfg      ,color244        ,brightblue      ,
J_statusbg      ,color254        ,white           ,
SETPALETTELIGHT

MUTTSOURCE="mutt-colors-solarized-template.muttrc"
MUTTTARGET="mutt-colors-solarized"
MUTTSUFFIX=".muttrc"
rm "$MUTTTARGET-dark-256$MUTTSUFFIX"
rm "$MUTTTARGET-dark-16$MUTTSUFFIX"
rm "$MUTTTARGET-light-256$MUTTSUFFIX"
rm "$MUTTTARGET-light-16$MUTTSUFFIX"

awk 'NR==FNR {a[$1]=$2;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_dark.tmp $MUTTSOURCE > "$MUTTTARGET-dark-256$MUTTSUFFIX"
awk 'NR==FNR {a[$1]=$3;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_dark.tmp $MUTTSOURCE > "$MUTTTARGET-dark-16$MUTTSUFFIX"
awk 'NR==FNR {a[$1]=$2;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_light.tmp $MUTTSOURCE > "$MUTTTARGET-light-256$MUTTSUFFIX"
awk 'NR==FNR {a[$1]=$3;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_light.tmp $MUTTSOURCE > "$MUTTTARGET-light-16$MUTTSUFFIX"

rm palette_light.tmp
rm palette_dark.tmp
