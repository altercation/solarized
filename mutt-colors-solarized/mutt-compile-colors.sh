#!/bin/sh

# Janus is a flexible monotone based palette with balanced accent colors.
# The accent palette is designed with precise color relationships to the base
# hue. Janus displays well on output devices with wide gamma variation.
# It scales down to a tight five color palette for layout work and can be used
# in full palette mode for terminal applications and is available as 
# colorschemes for popular command line applications and terminal emulators.
#
# Download from: http://ethanschoonover.com/janus
#
# JANUS     16/8 TERMCOLOR  HEX     XTERM   XTERM HEX   L*A*B
# base03     8/4 br black   #00151b   233   #121212     05 -07 -07
# base02     0/4 black      #17282e   234   #1c1c1c     15 -06 -06
# base01    10/7 br green   #3b494e   236   #303030     30 -05 -05
# base00    11/7 br yellow  #5e6d73   239   #4e4e4e     45 -05 -05
# base0     12/6 br blue    #77878c   242   #6c6c6c     55 -05 -05
# base1     14/4 br cyan    #9eaeb4   246   #949494     70 -05 -05
# base2      7/7 white      #d2d5cf   252   #d0d0d0     85 -02  03
# base3     15/7 br white   #f7f0dd   230   #ffffd7     95  00  10
# green      2/2 green      #93a707    64   #548700     65 -20  65
# yellow     3/3 yellow     #b58900   172   #d78700     60  10  65
# orange     9/3 br red     #bb3e07   130   #af5f00     45  50  55
# red        1/1 red        #b71818   124   #af0000     35  60  45
# magenta    5/5 magenta    #d92983   161   #d7005f     50  70 -05
# violet    13/5 br magenta #6c71c4    61   #5f5faf     50  15 -45
# blue       4/4 blue       #247ebb    26   #005fd7     50 -10 -40
# cyan       6/6 cyan       #3cafa5    37   #00afaf     65 -35 -05

cat > palette_dark.tmp <<SETPALETTEDARK
J_base03        ,color233        ,brightblack     ,
J_base02        ,color234        ,black           ,
J_base01        ,color236        ,brightgreen     ,
J_base00        ,color239        ,brightyellow    ,
J_base0         ,color242        ,brightblue      ,
J_base1         ,color246        ,brightcyan      ,
J_base2         ,color252        ,white           ,
J_base3         ,color230        ,brightwhite     ,
J_green         ,color64         ,green           ,
J_yellow        ,color172        ,yellow          ,
J_orange        ,color130        ,brightred       ,
J_red           ,color124        ,red             ,
J_magenta       ,color161        ,magenta         ,
J_violet        ,color61         ,brightmagenta   ,
J_blue          ,color26         ,blue            ,
J_cyan          ,color37         ,cyan            ,
J_bg            ,color233        ,default         ,
J_fg            ,color242        ,default         ,
J_statusfg      ,color239        ,brightyellow    ,
J_statusbg      ,color234        ,black           ,
SETPALETTEDARK
cat > palette_light.tmp <<SETPALETTELIGHT
J_base3         ,color233        ,brightblack     ,
J_base2         ,color234        ,black           ,
J_base1         ,color236        ,brightgreen     ,
J_base0         ,color239        ,brightyellow    ,
J_base00        ,color242        ,brightblue      ,
J_base01        ,color246        ,brightcyan      ,
J_base02        ,color252        ,white           ,
J_base03        ,color230        ,brightwhite     ,
J_green         ,color64         ,green           ,
J_yellow        ,color172        ,yellow          ,
J_orange        ,color130        ,brightred       ,
J_red           ,color124        ,red             ,
J_magenta       ,color161        ,magenta         ,
J_violet        ,color61         ,brightmagenta   ,
J_blue          ,color26         ,blue            ,
J_cyan          ,color37         ,cyan            ,
J_bg            ,color230        ,default         ,
J_fg            ,color239        ,default         ,
J_statusfg      ,color242        ,brightblue      ,
J_statusbg      ,color252        ,white           ,
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
