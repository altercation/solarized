Alternate Palette
------------------

NOT FOR USE UNLESS YOU UNDERSTAND THE HELL THAT IS COLOR MANAGEMENT.

The `alternate palettes` directory contains two Apple Color Picker palettes.  
The "tagged" palette is identical to the main Solarized.clr palette. The 
untagged palette contains untagged sRGB values (Apple calls untagged values 
"device colors").  Don't use this unless you are using an application that 
otherwise can't handle tagged values.

An example: If you are a web developer working on OS X and you wish to use one 
of the Solarized hex values, you have a couple choices:

1. Enter the code manually (easy, you should do this)
2. Use the color picker (possible, but do it the right way! See below...)

A popular colorpicker plugin is the "Hex Color Picker" from 
<http://wafflesoftware.net/hexpicker/>. If you wish to use this with the 
colorpicker and a preset palette like Solarized, here's what you do:

1. Instead of the plain old "solarized.clr" palette, use the "solarized-tagged" 
   and "solarized-untagged" palettes (solarized-tagged is the same as 
   solarized.clr, just renamed for clarity).

2. In the Hex Color picker (inside the Apple Color Picker) click the options 
   button and ensure that "Don't generate calibrated colors" is **checked**.  
   Ideally, Hex Color Picker would be aware of a particular color being 
   untagged (a "device" color in Apple parlance) and hand it over to you in 
   unaltered form, even if it was otherwise pulling calibrated colors off your 
   display.

3. If you desire a Solarized color **for web use** (not for use in an 
   application that uses Mac color swatches) then you switch to the 
   Solarized-untagged palette in Color Picker, choose a color, switch to the 
   Hex Color Picker tab and grab the correct color. Double check against the 
   chart below to confirm it's working as expected.

This is just one of many examples of how, even with applications/plugins that 
deal exclusively with color, there are unexpected or unintuitive exceptions to 
take into account.

The Values
----------

L\*a\*b values are canonical (White D65, Reference D50), other values are 
matched in sRGB space.

    SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
    --------- ------- ---- -------  ----------- ---------- ----------- -----------
    base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
    base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
    base01    #586e75 10/7 brgreen  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
    base00    #657b83 11/7 bryellow 241 #585858 50 -07 -07 101 123 131 195  23  51
    base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
    base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
    base2     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
    base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
    yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
    orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
    red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
    magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
    violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
    blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
    cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
    green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
