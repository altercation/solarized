#!/bin/sh
# ---------------------------------------------------------------------
# SOLARIZED color values
# ---------------------------------------------------------------------
# Download palettes and files from: http://ethanschoonover.com/solarized
# 
# SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
# --------- ------- ---- -------  ----------- ---------- ----------- -----------
# base03    #001b21  8/4 brblack  233 #121212 08 -08 -08   0  27  33 191 100  13
# base02    #0d262e  0/4 black    234 #1c1c1c 13 -08 -08  13  38  46 195  72  18
# base01    #4c6269 10/7 brgreen  239 #4e4e4e 40 -07 -07  76  98 105 195  27  41
# base00    #586e76 11/7 bryellow 240 #585858 45 -07 -07  88 110 118 195  25  46
# base0     #829494 12/6 brblue   244 #808080 60 -07 -02 130 148 148 178  13  58
# base1     #8fa2a1 14/4 brcyan   245 #8a8a8a 65 -07 -02 143 162 161 178  12  63
# base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
# base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
# yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
# orange    #c45221  9/3 brred    166 #d75f00 50  45  50 196  82  33  18  83  77
# red       #bd000f  1/1 red      124 #af0000 40  65  50 189   0  15 355 100  74
# magenta   #c42376  5/5 magenta  125 #af005f 45  65 -05 196  35 118 329  82  77
# violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
# blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
# cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
# green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

cat > palette_dark.tmp <<SETPALETTEDARK
J_base03        ,color233        ,brightblack     ,
J_base02        ,color234        ,black           ,
J_base01        ,color239        ,brightgreen     ,
J_base00        ,color240        ,brightyellow    ,
J_base0         ,color244        ,brightblue      ,
J_base1         ,color245        ,brightcyan      ,
J_base2         ,color254        ,white           ,
J_base3         ,color230        ,brightwhite     ,
J_yellow        ,color136        ,yellow          ,
J_orange        ,color166        ,brightred       ,
J_red           ,color124        ,red             ,
J_magenta       ,color125        ,magenta         ,
J_violet        ,color61         ,brightmagenta   ,
J_blue          ,color33         ,blue            ,
J_cyan          ,color37         ,cyan            ,
J_green         ,color64         ,green           ,
J_bg            ,color233        ,default         ,
J_fg            ,color244        ,default         ,
J_statusfg      ,color240        ,brightyellow    ,
J_statusbg      ,color234        ,black           ,
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
J_red           ,color124        ,red             ,
J_magenta       ,color125        ,magenta         ,
J_violet        ,color61         ,brightmagenta   ,
J_blue          ,color33         ,blue            ,
J_cyan          ,color37         ,cyan            ,
J_green         ,color64         ,green           ,
J_bg            ,color230        ,default         ,
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
