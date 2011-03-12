" Name:     Solarized vim colorscheme
" Author:   Ethan Schoonover <es@ethanschoonover.com>
" URL:      http://ethanschoonover.com/solarized
"           (see this url for latest release & screenshots)
" License:  OSI approved MIT license (see end of this file)
"
" Usage "{{{
" ---------------------------------------------------------------------
" QUICKSTART:
" ---------------------------------------------------------------------
" Put the following two lines in your vimrc:
"
"   set background=dark
"   colorscheme solarized
"
" or, for the light background mode of Solarized:
"
"   set background=light
"   colorscheme solarized
"
" pathogen users can install to:
"
"   (your vim directory)/bundle/vim-solarized/colors/solarized.vim
"
" (note that vim-solarized could be just solarized, it's up to you, but
" if you pull from git you'll get this directory name unless you change it)
"
" Other options are detailed below.
"
" IMPORTANT NOTE FOR TERMINAL USERS:
" If you are running vim in a terminal, Solarized will run in 256 color mode if 
" the terminal supports it, but those 256 colors are (in all 256 color terminal 
" emulators) limited to a "degraded" color palette.  While the colors will all 
" approximate the specific Solarized color values, if you prefer an accurate 
" color palette you can set the ANSI colors in your terminal and use the 16 
" color terminal mode using the g:solarized_termcolors="16" option detailed 
" below. The ANSI color map is specified in the table below and terminal color 
" themes are available for download from the web page listed at the top of this 
" file, including xorg Xdefaults/Xresources color values and themes for OS 
" X Terminal.app and iTerm 2.
"
"
" ---------------------------------------------------------------------
" ABOUT
" ---------------------------------------------------------------------
"
" SOLARIZED is a precisely designed color scheme with unique characteristics:
"
" PRECISION: Solarized is comprised of eight base monotone colors complemented 
" by eight accent colors. The monotone colors are specified in L*a*b* 
" colorspace for perceptually uniform contrast, even when the palette is 
" inverted from dark to light background mode. Accent colors are selected based 
" on specific color-wheel relationships to the base monotone series 
" (complement, triad, tetrad, split-complement, etc).
"
" INVERSION: Solarized can easily switch from light to dark background mode and 
" yet maintains L* (lightness) relationships in the entire base monotone 
" palette set. Accent colors retain excellent readability on both light and 
" dark backgrounds. Thus the vim solarized colorscheme, for example, can be 
" easily modified and extended without any effort spent on maintaining the 
" light/dark modes separately; the mode switch is the simple inversion of four 
" color values.
"
" READABILITY: Solarized has been designed as a "selective contrast" 
" colorscheme (versus the more common high or low contrast schemes). Elements 
" which are secondary in importance, or which should minimize their visual 
" intrusiveness (e.g. line numbers and comments in vim) use the lower contrast 
" base color values, while high value content (e.g. code) uses higher contrast 
" base values as well as accent colors.
"
" SCALABILITY: Solarized has been designed to be used both in the full palette 
" mode (in text editors where many colors are useful for syntax highlighting) 
" as well as in a scaled down five color mode for graphic design purposes (web 
" pages).
"
" PERSONALITY: Solarized aims to be flexible in many contexts and as such it 
" maintains the common primary and secondary named colors (red, blue, yellow, 
" green, etc.). Despite the common nature of these hues, each color has been 
" carefully tuned in terms of saturation, luminosity (more accurately, L* 
" lightness) so that the entire palette has a rich, warm feel in the accent 
" range as evidenced by the ochre yellow and oxygenated blood red, 
" complementing the deep-sea blue-greens of the base monotone colors.
"
" On the name: "Solarized" refers to the dual light/dark mode of the palette, 
" somewhat analogous to the photographic effect of solarization. The Ian Brown 
" album "Solarized" is also on regular rotation in my playlist.
"
"
" ---------------------------------------------------------------------
" COLOR VALUES
" ---------------------------------------------------------------------
"
" Download palettes and files from: http://ethanschoonover.com/solarized
" 
" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #091e25  8/4 brblack  233 #121212 10 -07 -07   9  30  37 194  75  14
" base02    #14292f  0/4 black    234 #1c1c1c 15 -07 -07  20  41  47 194  58  19
" base01    #4c6269 10/7 brgreen  239 #4e4e4e 40 -07 -07  76  98 105 195  27  41
" base00    #586e76 11/7 bryellow 240 #585858 45 -07 -07  88 110 118 195  25  46
" base0     #829494 12/6 brblue   244 #808080 60 -07 -02 130 148 148 178  13  58
" base1     #8fa2a1 14/4 brcyan   245 #8a8a8a 65 -07 -02 143 162 161 178  12  63
" base2     #e2e3d9  7/7 white    253 #dadada 90 -02  05 226 227 217  70   5  89
" base3     #f7f0dd 15/7 brwhite  230 #ffffd7 95  00  10 247 240 221  44  11  97
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #bd000f  1/1 red      124 #af0000 40  65  50 189   0  15 355 100  74
" magenta   #c42376  5/5 magenta  125 #af005f 45  65 -05 196  35 118 329  82  77
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
"
" ---------------------------------------------------------------------
" OPTIONS
" ---------------------------------------------------------------------
" 
" Set these in your vimrc file prior to calling the colorscheme.
"
" option name               default     optional
" ------------------------------------------------
" g:solarized_style     =   "dark"  |   "light"
" g:solarized_contrast  =   "normal"|   "high"
" g:solarized_termtrans =   0       |   1
" g:solarized_termcolors=   16      |   256
" g:solarized_degrade   =   0       |   1
" g:solarized_bold      =   1       |   0
" g:solarized_underline =   1       |   0
" g:solarized_italic    =   0       |   1
" ------------------------------------------------
"
" OPTION DETAILS
"
" ------------------------------------------------
" g:solarized_style     =   "dark"  |   "light"
" ------------------------------------------------
" If "solarized_style" isn't set, Solarized will use the value set by 
" "background" in your vimrc.  I recommend using "background" for simplicity.
" Thus in your vimrc file, the following sequences would set Solarized to 
" either dark or light mode, respectively:
"
"   set background=dark
"   colorscheme solarized
"
"   set background=light
"   colorscheme solarized
"
" The above is equivalent to:
"
"   let g:solarized_style = "dark"
"   colorscheme solarized
"
"   let g:solarized_style = "light"
"   colorscheme solarized
" 
" Note that, if set, g:solarized_style overrides the setting for "background".
"
" ------------------------------------------------
" g:solarized_contrast  =   "normal"|   "high"
" ------------------------------------------------
" Solarized has been designed to keep contrast of less critical elements low 
" (e.g. comments are lower contrast). Solarized has also been tested on devices 
" with a wide variety of gamma values and should perform well on most displays.  
" If you find you want to increase contrast for the low contrast items 
" (comments, etc.) you can set this value to "high" (default is "normal").  
" I encourage you to use it in normal mode first.
"
" ------------------------------------------------
" g:solarized_termtrans =   0       |   1
" ------------------------------------------------
" On some terminals (urxvt in my tests) Vim colorthemes may override 
" transparency settings of the terminal. Setting this to "1" changes the 
" background value in terminal Vim mode to "NONE" allowing your terminal 
" background color/transparency to be used for Vim's background. This shouldn't 
" be necessary in OSX terminal applications such as Terminal and iTerm2.
"
" ------------------------------------------------
" g:solarized_termcolors=   16      |   256
" ------------------------------------------------
" A very important setting if you are using Vim in terminals and want accurate 
" colors. There are two options:
" 16 - Use the named 16 colors of the terminal (red, blue, etc.). In order for 
" the colors to be accurately reproduced for this colorscheme, you must set 
" your terminal's 16 colors to match Solarized. I list the terminal color 
" values in a table above, and also provide downloads of colorscheme for 
" command terminal applications from http://ejas.net/solarized
"
" ------------------------------------------------
" g:solarized_degrade   =   0       |   1
" ------------------------------------------------
" Used primarily during testing, this can be set to 1 to force Solarized to 
" degrade the hex color values to xterm/256 color approximate matching values.  
" Note that while in terminal mode in a 256 color terminal, these degraded 
" color values will be used automatically unless you have adjusted your 
" terminal's default 16 colors and set g:solarized_termcolors to 16 in your 
" vimrc before setting your colorscheme.
"
" ------------------------------------------------
" g:solarized_bold      =   1       |   0
" ------------------------------------------------
" ------------------------------------------------
" g:solarized_underline =   1       |   0
" ------------------------------------------------
" ------------------------------------------------
" g:solarized_italic    =   0       |   1
" ------------------------------------------------
"
" Useful commands for testing colorschemes:
" :source $VIMRUNTIME/syntax/hitest.vim
" :help highlight-groups
" :help cterm-colors
" :help group-name
"
" Useful links for developing colorschemes:
" http://www.vim.org/scripts/script.php?script_id=2937
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
" http://www.frexx.de/xterm-256-notes/"
"
"
" }}}
" Default option values"{{{
" ---------------------------------------------------------------------
if !exists("g:solarized_termtrans")
    let g:solarized_termtrans = 0
endif
if !exists("g:solarized_degrade")
    let g:solarized_degrade = 0
endif
if !exists("g:solarized_bold")
    let g:solarized_bold      = 1
endif
if !exists("g:solarized_underline")
    let g:solarized_underline = 1
endif
if !exists("g:solarized_italic")
    let g:solarized_italic    = 1
endif
if !exists("g:solarized_termcolors")
    let g:solarized_termcolors = 256
    let g:solarized_termcolors = 16
endif
if !exists("g:solarized_style")
    let g:solarized_style = &background
endif
if !exists("g:solarized_contrast")
    let g:solarized_contrast = "normal"
endif
"}}}
" Colorscheme basic settings"{{{
" ---------------------------------------------------------------------
if g:solarized_style == "dark"
    set background=dark
elseif g:solarized_style == "light"
    set background=light
else
    let g:solarized_style = &background
endif

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "solarized"
"let colors_name = &background
"if background == "light"
"    let colors_name = &background
"else
"    let colors_name = &background
"endif
"}}}
" GUI & CSApprox hexadecimal palettes"{{{
" ---------------------------------------------------------------------
"
" Set both gui and terminal color values in separate conditional statements
" Due to possibility that CSApprox is running (though I suppose we could just
" leave the hex values out entirely in that case and include only cterm colors)
" We also check to see if user has set solarized (force use of the
" neutral gray monotone palette component)
if has("gui_running") && g:solarized_degrade == 0
    let s:g_back        = "#091e25"
    let s:g_base03      = "#091e25"
    let s:g_base02      = "#14292f"
    let s:g_base01      = "#4c6269"
    let s:g_base00      = "#586e76"
    let s:g_base0       = "#829494"
    let s:g_base1       = "#8fa2a1"
    let s:g_base2       = "#e2e3d9"
    let s:g_base3       = "#f7f0dd"
    let s:g_yellow      = "#b58900"
    let s:g_orange      = "#cb4b16"
    let s:g_red         = "#bd000f"
    let s:g_magenta     = "#c42376"
    let s:g_violet      = "#6c71c4"
    let s:g_blue        = "#268bd2"
    let s:g_cyan        = "#2aa198"
    let s:g_green       = "#859900"
else
    " these colors are for non-gui vim when CSApprox is installed. CSApprox 
    " degrades the base colors poorly (bright blues instead of muted gray 
    " blues) so we set all hex values here to ones which CSApprox will not
    " change and which we approve of. Perhaps I should just can the hex values
    " and use just the color table values, leaving these blank. Not much
    " difference either way and I'd rather be thorough about it.
    " They can also be used by setting g:solarized_degrade to 1 in vimrc
    let s:g_back        = "#121212"
    let s:g_base03      = "#121212"
    let s:g_base02      = "#1c1c1c"
    let s:g_base01      = "#4e4e4e"
    let s:g_base00      = "#585858"
    let s:g_base0       = "#808080"
    let s:g_base1       = "#8a8a8a"
    let s:g_base2       = "#dadada"
    let s:g_base3       = "#ffffd7"
    let s:g_yellow      = "#af8700"
    let s:g_orange      = "#d75f00"
    let s:g_red         = "#af0000"
    let s:g_magenta     = "#af005f"
    let s:g_violet      = "#5f5faf"
    let s:g_blue        = "#0087ff"
    let s:g_cyan        = "#00afaf"
    let s:g_green       = "#5f8700"
endif
"}}}
" 256 Terminal (no CSApprox) and 16 color fallback palettes"{{{
" ---------------------------------------------------------------------
" We also set this if gui is running as we use the optional formatting
" values that get set here (ou==optional underline, ob==opt bold).
if (has("gui_running") || &t_Co == 256) && g:solarized_termcolors != 16
    let s:c_back        = "233"
    let s:c_base03      = "233"
    let s:c_base02      = "234"
    let s:c_base01      = "239"
    let s:c_base00      = "240"
    let s:c_base0       = "244"
    let s:c_base1       = "245"
    let s:c_base2       = "253"
    let s:c_base3       = "230"
    let s:c_yellow      = "136"
    let s:c_orange      = "166"
    let s:c_red         = "124"
    let s:c_magenta     = "125"
    let s:c_violet      = " 61"
    let s:c_blue        = " 33"
    let s:c_cyan        = " 37"
    let s:c_green       = " 64"
    let s:ou            = ""
    let s:ob            = ""
elseif &t_Co > 8 || g:solarized_termcolors == 16
    " NOTE: this requires terminal colors to be set to solarized standard
    " 16 colors (see top of this file for details)
    let s:c_back        = "NONE"
    let s:c_base03      = "8"
    let s:c_base02      = "0"
    let s:c_base01      = "10"
    let s:c_base00      = "11"
    let s:c_base0       = "12"
    let s:c_base1       = "14"
    let s:c_base2       = "7"
    let s:c_base3       = "15"
    let s:c_green       = "2"
    let s:c_yellow      = "3"
    let s:c_orange      = "9"
    let s:c_red         = "1"
    let s:c_magenta     = "5"
    let s:c_violet      = "13"
    let s:c_blue        = "4"
    let s:c_cyan        = "6"
    let s:ou            = ""
    let s:ob            = ""
else " must be in an 8 color or less terminal
    let s:c_back        = "NONE"
    let s:c_base03      = "4"
    let s:c_base02      = "darkgrey"
    let s:c_base01      = "grey"
    let s:c_base00      = "darkgrey"
    let s:c_base0       = "6"
    let s:c_base1       = "4"
    let s:c_base2       = "7"
    let s:c_base3       = "7"
    let s:c_green       = "2"
    let s:c_yellow      = "3"
    let s:c_orange      = "3"
    let s:c_red         = "1"
    let s:c_magenta     = "5"
    let s:c_violet      = "5"
    let s:c_blue        = "4"
    let s:c_cyan        = "6"
    let s:ou            = ",underline"
    let s:ob            = ",bold"
endif
"}}}
" Formatting options and null values for passthrough effect"{{{
" ---------------------------------------------------------------------
let s:g_none            = "NONE"
let s:c_none            = "NONE"
let s:t_none            = "NONE"
let s:n                 = "NONE"
let s:c                 = ",undercurl"
let s:r                 = ",reverse"
let s:s                 = ",standout"
"}}}
" Alternate light scheme "{{{
" ---------------------------------------------------------------------
if g:solarized_style == "light"
    let s:c_temp03      = s:c_base03
    let s:c_temp02      = s:c_base02
    let s:c_temp01      = s:c_base01
    let s:c_temp00      = s:c_base00
    let s:c_base03      = s:c_base3
    let s:c_base02      = s:c_base2
    let s:c_base01      = s:c_base1
    let s:c_base00      = s:c_base0
    let s:c_base0       = s:c_temp00
    let s:c_base1       = s:c_temp01
    let s:c_base2       = s:c_temp02
    let s:c_base3       = s:c_temp03
    let s:c_back        = s:c_base03
    let s:g_temp03      = s:g_base03
    let s:g_temp02      = s:g_base02
    let s:g_temp01      = s:g_base01
    let s:g_temp00      = s:g_base00
    let s:g_base03      = s:g_base3
    let s:g_base02      = s:g_base2
    let s:g_base01      = s:g_base1
    let s:g_base00      = s:g_base0
    let s:g_base0       = s:g_temp00
    let s:g_base1       = s:g_temp01
    let s:g_base2       = s:g_temp02
    let s:g_base3       = s:g_temp03
    let s:g_back        = s:g_base03
endif
"}}}
" Alternate inverted background scheme "{{{
" ---------------------------------------------------------------------
if g:solarized_style == "inverted"
    let s:c_temp03      = s:c_base03
    let s:c_temp02      = s:c_base02
    let s:c_base03      = s:c_temp02
    let s:c_base02      = s:c_temp03
    let s:c_back        = s:c_base03
    let s:g_temp03      = s:g_base03
    let s:g_temp02      = s:g_base02
    let s:g_base03      = s:g_temp02
    let s:g_base02      = s:g_temp03
    let s:g_back        = s:g_base03
endif
"}}}
" Optional contrast schemes "{{{
" ---------------------------------------------------------------------
if g:solarized_contrast == "high"
    let s:g_base03      = s:g_base03
    let s:g_base02      = s:g_base02
    let s:g_base01      = s:g_base00
    let s:g_base00      = s:g_base0
    let s:g_base0       = s:g_base1
    let s:g_base1       = s:g_base2
    let s:g_base2       = s:g_base3
    let s:g_base3       = s:g_base3
    let s:g_back        = s:g_back
endif
"}}}
" Overrides dependent on user specified values"{{{
" ---------------------------------------------------------------------
if g:solarized_termtrans == 1
    let s:c_back        = "NONE"   
endif

if g:solarized_bold == 1
    let s:b             = ",bold"
else
    let s:b             = ""
endif

if g:solarized_underline == 1
    let s:u             = ",underline"
else
    let s:u             = ""
endif

if g:solarized_italic == 1
    let s:i             = ",italic"
else
    let s:i             = ""
endif
"}}}
" Highlighting primitives"{{{
" ---------------------------------------------------------------------

exe "let s:bg_none      = ' ctermbg=".s:c_none   ." guibg=".s:g_none   ."'" 
exe "let s:bg_back      = ' ctermbg=".s:c_back   ." guibg=".s:g_back   ."'" 
exe "let s:bg_base03    = ' ctermbg=".s:c_base03 ." guibg=".s:g_base03 ."'" 
exe "let s:bg_base02    = ' ctermbg=".s:c_base02 ." guibg=".s:g_base02 ."'" 
exe "let s:bg_base01    = ' ctermbg=".s:c_base01 ." guibg=".s:g_base01 ."'" 
exe "let s:bg_base00    = ' ctermbg=".s:c_base00 ." guibg=".s:g_base00 ."'" 
exe "let s:bg_base0     = ' ctermbg=".s:c_base0  ." guibg=".s:g_base0  ."'" 
exe "let s:bg_base1     = ' ctermbg=".s:c_base1  ." guibg=".s:g_base1  ."'" 
exe "let s:bg_base2     = ' ctermbg=".s:c_base2  ." guibg=".s:g_base2  ."'" 
exe "let s:bg_base3     = ' ctermbg=".s:c_base3  ." guibg=".s:g_base3  ."'" 
exe "let s:bg_green     = ' ctermbg=".s:c_green  ." guibg=".s:g_green  ."'" 
exe "let s:bg_yellow    = ' ctermbg=".s:c_yellow ." guibg=".s:g_yellow ."'" 
exe "let s:bg_orange    = ' ctermbg=".s:c_orange ." guibg=".s:g_orange ."'" 
exe "let s:bg_red       = ' ctermbg=".s:c_red    ." guibg=".s:g_red    ."'" 
exe "let s:bg_magenta   = ' ctermbg=".s:c_magenta." guibg=".s:g_magenta."'" 
exe "let s:bg_violet    = ' ctermbg=".s:c_violet ." guibg=".s:g_violet ."'" 
exe "let s:bg_blue      = ' ctermbg=".s:c_blue   ." guibg=".s:g_blue   ."'" 
exe "let s:bg_cyan      = ' ctermbg=".s:c_cyan   ." guibg=".s:g_cyan   ."'" 

exe "let s:fg_none      = ' ctermfg=".s:c_none   ." guifg=".s:g_none   ."'" 
exe "let s:fg_back      = ' ctermfg=".s:c_back   ." guifg=".s:g_back   ."'" 
exe "let s:fg_base03    = ' ctermfg=".s:c_base03 ." guifg=".s:g_base03 ."'" 
exe "let s:fg_base02    = ' ctermfg=".s:c_base02 ." guifg=".s:g_base02 ."'" 
exe "let s:fg_base01    = ' ctermfg=".s:c_base01 ." guifg=".s:g_base01 ."'" 
exe "let s:fg_base00    = ' ctermfg=".s:c_base00 ." guifg=".s:g_base00 ."'" 
exe "let s:fg_base0     = ' ctermfg=".s:c_base0  ." guifg=".s:g_base0  ."'" 
exe "let s:fg_base1     = ' ctermfg=".s:c_base1  ." guifg=".s:g_base1  ."'" 
exe "let s:fg_base2     = ' ctermfg=".s:c_base2  ." guifg=".s:g_base2  ."'" 
exe "let s:fg_base3     = ' ctermfg=".s:c_base3  ." guifg=".s:g_base3  ."'" 
exe "let s:fg_green     = ' ctermfg=".s:c_green  ." guifg=".s:g_green  ."'" 
exe "let s:fg_yellow    = ' ctermfg=".s:c_yellow ." guifg=".s:g_yellow ."'" 
exe "let s:fg_orange    = ' ctermfg=".s:c_orange ." guifg=".s:g_orange ."'" 
exe "let s:fg_red       = ' ctermfg=".s:c_red    ." guifg=".s:g_red    ."'" 
exe "let s:fg_magenta   = ' ctermfg=".s:c_magenta." guifg=".s:g_magenta."'" 
exe "let s:fg_violet    = ' ctermfg=".s:c_violet ." guifg=".s:g_violet ."'" 
exe "let s:fg_blue      = ' ctermfg=".s:c_blue   ." guifg=".s:g_blue   ."'" 
exe "let s:fg_cyan      = ' ctermfg=".s:c_cyan   ." guifg=".s:g_cyan   ."'" 

exe "let s:sp_none      = ' guisp=".s:g_none   ."'" 
exe "let s:sp_back      = ' guisp=".s:g_back   ."'" 
exe "let s:sp_base03    = ' guisp=".s:g_base03 ."'" 
exe "let s:sp_base02    = ' guisp=".s:g_base02 ."'" 
exe "let s:sp_base01    = ' guisp=".s:g_base01 ."'" 
exe "let s:sp_base00    = ' guisp=".s:g_base00 ."'" 
exe "let s:sp_base0     = ' guisp=".s:g_base0  ."'" 
exe "let s:sp_base1     = ' guisp=".s:g_base1  ."'" 
exe "let s:sp_base2     = ' guisp=".s:g_base2  ."'" 
exe "let s:sp_base3     = ' guisp=".s:g_base3  ."'" 
exe "let s:sp_green     = ' guisp=".s:g_green  ."'" 
exe "let s:sp_yellow    = ' guisp=".s:g_yellow ."'" 
exe "let s:sp_orange    = ' guisp=".s:g_orange ."'" 
exe "let s:sp_red       = ' guisp=".s:g_red    ."'" 
exe "let s:sp_magenta   = ' guisp=".s:g_magenta."'" 
exe "let s:sp_violet    = ' guisp=".s:g_violet ."'" 
exe "let s:sp_blue      = ' guisp=".s:g_blue   ."'" 
exe "let s:sp_cyan      = ' guisp=".s:g_cyan   ."'" 

exe "let s:fmt_none     = ' cterm=NONE".    " gui=NONE".    " term=NONE".    "'"
exe "let s:fmt_bold     = ' cterm=NONE".s:b." gui=NONE".s:b." term=NONE".s:b."'"
exe "let s:fmt_bldi     = ' cterm=NONE".s:b.s:i." gui=NONE".s:b.s:i." term=NONE".s:b.s:i."'"
exe "let s:fmt_undr     = ' cterm=NONE".s:u." gui=NONE".s:u." term=NONE".s:u."'"
exe "let s:fmt_undb     = ' cterm=NONE".s:u.s:b." gui=NONE".s:u.s:b.
            \" term=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' cterm=NONE".s:u.s:i." gui=NONE".s:u.s:i.
            \" term=NONE".s:u.s:i."'"
exe "let s:fmt_uopt     = ' cterm=NONE".s:ou." gui=NONE".s:ou.
            \" term=NONE".s:ou."'"
exe "let s:fmt_bopt     = ' cterm=NONE".s:ob." gui=NONE".s:ob.
            \" term=NONE".s:ob."'"
exe "let s:fmt_curl     = ' cterm=NONE".s:c." gui=NONE".s:c." term=NONE".s:c."'"
exe "let s:fmt_ital     = ' cterm=NONE".s:i." gui=NONE".s:i." term=NONE".s:i."'"
exe "let s:fmt_revr     = ' cterm=NONE".s:r." gui=NONE".s:r." term=NONE".s:r."'"
exe "let s:fmt_stnd     = ' cterm=NONE".s:s." gui=NONE".s:s." term=NONE".s:s."'"
"}}}
" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "hi Normal"         . s:fg_base0  .s:bg_back   .s:fmt_none

exe "hi Comment"        . s:fg_base01 .s:bg_none   .s:fmt_none
"      *Comment         any comment

exe "hi Constant"       . s:fg_green  .s:bg_none   .s:fmt_none
"      *Constant        any constant
"       String          a string constant: "this is a string"
"       Character       a character constant: 'c', '\n'
"       Number          a number constant: 234, 0xff
"       Boolean         a boolean constant: TRUE, false
"       Float           a floating point constant: 2.3e10

exe "hi Identifier"     . s:fg_blue   .s:bg_none   .s:fmt_none
"      *Identifier      any variable name
"       Function        function name (also: methods for classes)
"
exe "hi Statement"      . s:fg_cyan   .s:bg_none   .s:fmt_none
"      *Statement       any statement
"       Conditional     if, then, else, endif, switch, etc.
"       Repeat          for, do, while, etc.
"       Label           case, default, etc.
"       Operator        "sizeof", "+", "*", etc.
"       Keyword         any other keyword
"       Exception       try, catch, throw

exe "hi PreProc"        . s:fg_yellow .s:bg_none   .s:fmt_none
"      *PreProc         generic Preprocessor
"       Include         preprocessor #include
"       Define          preprocessor #define
"       Macro           same as Define
"       PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi Type"           . s:fg_orange .s:bg_none   .s:fmt_none
"      *Type            int, long, char, etc.
"       StorageClass    static, register, volatile, etc.
"       Structure       struct, union, enum, etc.
"       Typedef         A typedef

" *Special              any special symbol
exe "hi Special"        . s:fg_red    .s:bg_none   .s:fmt_none
"        SpecialChar    special character in a constant
"        Tag            you can use CTRL-] on this
"        Delimiter      character that needs attention
"        SpecialComment special things inside a comment
"        Debug          debugging statements

exe "hi Underlined"     . s:fg_violet .s:bg_none   .s:fmt_none
"      *Underlined      text that stands out, HTML links

exe "hi Ignore"         . s:fg_none   .s:bg_none   .s:fmt_none
"      *Ignore          left blank, hidden  |hl-Ignore|

exe "hi Error"          . s:fg_red    .s:bg_none   .s:fmt_bold
"      *Error           any erroneous construct

exe "hi Todo"           . s:fg_magenta.s:bg_none   .s:fmt_none
"      *Todo            anything that needs extra attention; mostly the
"                       keywords TODO FIXME and XXX
"
"Highlighting groups for various occasions
"-----------------------------------------
exe "hi SpecialKey"     . s:fg_base02 .s:bg_none   .s:fmt_none
exe "hi NonText"        . s:fg_base02 .s:bg_none   .s:fmt_bold
exe "hi Directory"      . s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi ErrorMsg"       . s:fg_red    .s:bg_none   .s:fmt_revr
exe "hi IncSearch"      . s:fg_yellow .s:bg_none   .s:fmt_revr
exe "hi Search"         . s:fg_yellow .s:bg_none   .s:fmt_stnd
exe "hi MoreMsg"        . s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi ModeMsg"        . s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi LineNr"         . s:fg_base01 .s:bg_base02 .s:fmt_none
exe "hi Question"       . s:fg_cyan   .s:bg_none   .s:fmt_bold
exe "hi StatusLine"     . s:fg_base0  .s:bg_base02 .s:fmt_none
exe "hi StatusLineNC"   . s:fg_base1  .s:bg_base02 .s:fmt_none
exe "hi VertSplit"      . s:fg_base0  .s:bg_base02 .s:fmt_none
exe "hi Title"          . s:fg_orange .s:bg_none   .s:fmt_bold
exe "hi Visual"         . s:fg_base1  .s:bg_base01 .s:fmt_none
exe "hi VisualNOS"      . s:fg_base1  .s:bg_base01 .s:fmt_none
exe "hi WarningMsg"     . s:fg_red    .s:bg_none   .s:fmt_bold
exe "hi WildMenu"       . s:fg_base1  .s:bg_base02 .s:fmt_none
exe "hi Folded"         . s:fg_base00 .s:bg_base02 .s:fmt_none
exe "hi FoldColumn"     . s:fg_base00 .s:bg_base02 .s:fmt_none
exe "hi DiffAdd"        . s:fg_green  .s:bg_none   .s:fmt_revr
exe "hi DiffChange"     . s:fg_yellow .s:bg_none   .s:fmt_revr
exe "hi DiffDelete"     . s:fg_red    .s:bg_none   .s:fmt_revr
exe "hi DiffText"       . s:fg_blue   .s:bg_none   .s:fmt_revr
exe "hi SignColumn"     . s:fg_base0  .s:bg_base02 .s:fmt_none
exe "hi Conceal"        . s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi SpellBad"       . s:fg_none   .s:bg_none   .s:fmt_curl   .s:sp_red
exe "hi SpellCap"       . s:fg_none   .s:bg_none   .s:fmt_curl   .s:sp_violet
exe "hi SpellRare"      . s:fg_none   .s:bg_none   .s:fmt_curl   .s:sp_cyan
exe "hi SpellLocal"     . s:fg_none   .s:bg_none   .s:fmt_curl   .s:sp_yellow
exe "hi Pmenu"          . s:fg_base0  .s:bg_base02 .s:fmt_none
exe "hi PmenuSel"       . s:fg_base2  .s:bg_base01 .s:fmt_none
exe "hi PmenuSbar"      . s:fg_base0  .s:bg_base2  .s:fmt_none
exe "hi PmenuThumb"     . s:fg_base03 .s:bg_base0  .s:fmt_none
exe "hi TabLine"        . s:fg_base0  .s:bg_base02 .s:fmt_undr   .s:sp_base0
exe "hi TabLineSel"     . s:fg_base2  .s:bg_base01 .s:fmt_undr   .s:sp_base0
exe "hi TabLineFill"    . s:fg_base0  .s:bg_base02 .s:fmt_undr   .s:sp_base0
exe "hi CursorColumn"   . s:fg_none   .s:bg_base02 .s:fmt_none
exe "hi CursorLine"     . s:fg_none   .s:bg_base02 .s:fmt_uopt
exe "hi ColorColumn"    . s:fg_none   .s:bg_base02 .s:fmt_none
exe "hi Cursor"         . s:fg_none   .s:bg_none   .s:fmt_revr
exe "hi lCursor"        . s:fg_none   .s:bg_none   .s:fmt_stnd
exe "hi MatchParen"     . s:fg_red    .s:bg_base01 .s:fmt_bold

"}}}
" vim syntax highlighting "{{{
" ---------------------------------------------------------------------
"exe "hi vimLineComment" . s:fg_base01 .s:bg_none   .s:fmt_none
"exe "hi vimVar"         . s:fg_cyan   .s:bg_none   .s:fmt_none
"exe "hi helpExample"    . s:fg_base1  .s:bg_none   .s:fmt_none
"exe "hi helpSpecial"    . s:fg_yellow .s:bg_none   .s:fmt_none
"exe "hi helpOption"     . s:fg_cyan   .s:bg_none   .s:fmt_none
"exe "hi helpNote"       . s:fg_magenta.s:bg_none   .s:fmt_none
"exe "hi helpVim"       . s:fg_magenta.s:bg_none   .s:fmt_none
"exe "hi helpHyperTextJump".s:fg_blue  .s:bg_none   .s:fmt_undr
"exe "hi helpHyperTextEntry".s:fg_green .s:bg_none   .s:fmt_none
"exe "hi vimIsCommand"   . s:fg_base00 .s:bg_none   .s:fmt_none
"exe "hi vimSynMtchOpt". s:fg_yellow .s:bg_none   .s:fmt_none
"exe "hi vimSynType"     . s:fg_cyan   .s:bg_none   .s:fmt_none
"}}}
" html highlighting "{{{
" ---------------------------------------------------------------------
"exe "hi htmlTag"        . s:fg_red    .s:bg_none   .s:fmt_none
"exe "hi htmlTagN"       . s:fg_red    .s:bg_none   .s:fmt_none
"exe "hi htmlTagName"    . s:fg_red    .s:bg_none   .s:fmt_none
"exe "hi htmlEndTag"     . s:fg_red    .s:bg_none   .s:fmt_none
"}}}
" perl highlighting "{{{
" ---------------------------------------------------------------------
"exe "hi perlHereDoc"    . s:fg_base1  .s:bg_back   .s:fmt_none
"}}}
" haskell syntax highlighting"{{{
" ---------------------------------------------------------------------
" For use with syntax/haskell.vim : Haskell Syntax File 
" http://www.vim.org/scripts/script.php?script_id=3034
" See also Steffen Siering's github repository:
" http://github.com/urso/dotrc/blob/master/vim/syntax/haskell.vim
" ---------------------------------------------------------------------
"
" Treat True and False specially, see the plugin referenced above
let hs_highlight_boolean=1
" highlight delims, see the plugin referenced above
let hs_highlight_delimiters=1

exe "hi hsStructure"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi hs_hlFunctionName"  . s:fg_blue   .s:bg_none
exe "hi hsStatement"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi hsImportLabel"      . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi hs_OpFunctionName"  . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi hs_DeclareFunction" . s:fg_orange .s:bg_none   .s:fmt_none
exe "hi hsVarSym"           . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi hsType"             . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi hsTypedef"          . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi hsModuleName"       . s:fg_green  .s:bg_none   .s:fmt_undr
exe "hi hsModuleStartLabel" . s:fg_magenta.s:bg_none   .s:fmt_none
hi link hsImportParams      Delimiter
hi link hsDelimTypeExport   Delimiter
hi link hsModuleStartLabel  hsStructure
hi link hsModuleWhereLabel  hsModuleStartLabel

" following is for the haskell-conceal plugin
" the first two items don't have an impact, but better safe
exe "hi hsNiceOperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi hsniceoperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none

"}}}
" pandoc markdown syntax highlighting "{{{
" ---------------------------------------------------------------------

"PandocHiLink pandocNormalBlock
exe "hi pandocTitleBlock"               .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi pandocTitleBlockTitle"          .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "hi pandocTitleComment"             .s:fg_blue   .s:bg_none   .s:fmt_bold
hi link pandocComment                   Comment
hi link pandocVerbatimBlock             PreProc
hi link pandocVerbatimBlockDeep         pandocVerbatimBlock
hi link pandocCodeBlock                 pandocVerbatimBlock
hi link pandocCodeBlockDelim            pandocVerbatimBlock
hi link pandocBlockQuote                Identifier
hi link pandocBlockQuoteLeader1         pandocBlockQuote
hi link pandocBlockQuoteLeader2         Statement
hi link pandocBlockQuoteLeader3         PreProc
hi link pandocBlockQuoteLeader4         Special
hi link pandocBlockQuoteLeader5         Todo
hi link pandocBlockQuoteLeader6         Underlined
hi link pandocDefinitionBlock           Statement
exe "hi pandocDefinitionTerm"           .s:fg_cyan   .s:bg_none   .s:fmt_bold
exe "hi pandocDefinitionIndctr"         .s:fg_cyan   .s:bg_none   .s:fmt_bold
exe "hi pandocListMarker"               .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi pandocListReference"            .s:fg_magenta.s:bg_none   .s:fmt_undr
"PandocHiLink pandocInlineHTML
"PandocHiLink pandocInlineHTMLcomment

" Tables
" ---------------------------------------------------------------------
let s:fg_ptable = s:fg_blue
exe "hi pandocTable"                        .s:fg_ptable   .s:bg_base03 .s:fmt_none
exe "hi pandocTableStructure"               .s:fg_ptable   .s:bg_base03 .s:fmt_none
hi link pandocTableStructureTop             pandocTableStructre
hi link pandocTableStructureEnd             pandocTableStructre
exe "hi pandocTableZebraLight"              .s:fg_ptable   .s:bg_base03 .s:fmt_none
exe "hi pandocTableZebraDark"               .s:fg_ptable   .s:bg_base02 .s:fmt_none
exe "hi pandocEmphasisTable"                .s:fg_ptable   .s:bg_none   .s:fmt_ital
exe "hi pandocEmphasisNestedTable"          .s:fg_ptable   .s:bg_none   .s:fmt_bldi
exe "hi pandocStrongEmphasisTable"          .s:fg_ptable   .s:bg_none   .s:fmt_bold
exe "hi pandocStrongEmphasisNestedTable"    .s:fg_ptable   .s:bg_none   .s:fmt_bldi
exe "hi pandocStrongEmphasisEmphasisTable"  .s:fg_ptable   .s:bg_none   .s:fmt_bldi
exe "hi pandocStrikeoutTable"               .s:fg_ptable   .s:bg_none   .s:fmt_revr
exe "hi pandocVerbatimInlineTable"          .s:fg_ptable   .s:bg_none   .s:fmt_none
exe "hi pandocSuperscriptTable"             .s:fg_ptable   .s:bg_none   .s:fmt_none
exe "hi pandocSubscriptTable"               .s:fg_ptable   .s:bg_none   .s:fmt_none

" Headings
" ---------------------------------------------------------------------
let s:fg_phead = s:fg_orange
exe "hi pandocHeading"                          .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi pandocHeadingMarker"                    .s:fg_yellow.s:bg_none.s:fmt_bold
exe "hi pandocEmphasisHeading"                  .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi pandocEmphasisNestedHeading"            .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi pandocStrongEmphasisHeading"            .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi pandocStrongEmphasisNestedHeading"      .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi pandocStrongEmphasisEmphasisHeading"    .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi pandocStrikeoutHeading"                 .s:fg_phead .s:bg_none.s:fmt_revr
exe "hi pandocVerbatimInlineHeading"            .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi pandocSuperscriptHeading"               .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi pandocSubscriptHeading"                 .s:fg_phead .s:bg_none.s:fmt_bold

" Links
" ---------------------------------------------------------------------
exe "hi pandocLinkDelim"                .s:fg_base01 .s:bg_none   .s:fmt_none
exe "hi pandocLinkLabel"                .s:fg_blue   .s:bg_none   .s:fmt_undr
exe "hi pandocLinkText"                 .s:fg_violet .s:bg_none   .s:fmt_undr
exe "hi pandocLinkURL"                  .s:fg_base00 .s:bg_none   .s:fmt_none
exe "hi pandocLinkTitle"                .s:fg_base00 .s:bg_none   .s:fmt_ital
exe "hi pandocLinkDefinition"           .s:fg_base1  .s:bg_none   .s:fmt_none
exe "hi pandocLinkDefinitionID"         .s:fg_blue   .s:bg_none   .s:fmt_bold
"following item was previously linked to Todo but removed as many colorschemes
"have an absolutely insane highlight style for that highlight group
PandocHiLink pandocImageCaption         Special
PandocHiLink pandocFootnoteLink         Constant
PandocHiLink pandocFootnoteInline       Constant
PandocHiLink pandocFootnote             Constant
"PandocHiLink pandocFootnoteIndctr      Constant
PandocHiLink pandocCitationDelim        Underlined
PandocHiLink pandocCitation             Underlined
"following item was previously linked to Todo but removed as many colorschemes
"have an absolutely insane highlight style for that highlight group
PandocHiLink pandocCitationID           Special
"PandocHiLink pandocCitationInline
PandocHiLink pandocCitationRef          pandocCitation

" Main Styles
" ---------------------------------------------------------------------
exe "hi pandocStyleDelim"               .s:fg_base01 .s:bg_none  .s:fmt_none
exe "hi pandocEmphasis"                 .s:fg_base0  .s:bg_none  .s:fmt_ital
exe "hi pandocEmphasisNested"           .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi pandocStrongEmphasis"           .s:fg_base0  .s:bg_none  .s:fmt_bold
exe "hi pandocStrongEmphasisNested"     .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi pandocStrongEmphasisEmphasis"   .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi pandocStrikeout"                .s:fg_base0  .s:bg_none  .s:fmt_revr
exe "hi pandocVerbatimInline"           .s:fg_yellow .s:bg_none  .s:fmt_none
exe "hi pandocSuperscript"              .s:fg_violet .s:bg_none  .s:fmt_none
exe "hi pandocSubscript"                .s:fg_violet .s:bg_none  .s:fmt_none

PandocHiLink pandocRule                 Identifier
PandocHiLink pandocRuleLine             pandocRule
PandocHiLink pandocEscapePair           Special
PandocHiLink pandocEscapedCharacter     pandocEscapePair
PandocHiLink pandocNonBreakingSpace     pandocEscapePair
PandocHiLink pandocLineBreak            pandocEscapePair
"PandocHiLink pandocInlineMath
PandocHiLink pandocHakyllMetadataDelim  Comment
"following item was previously linked to Todo but removed as many colorschemes
"have an absolutely insane highlight style for that highlight group
PandocHiLink pandocHakyllMetadata       Special
PandocHiLink pandocHakyllMetadataKey    Identifier
PandocHiLink pandocHakyllMetadataKeyName    pandocHakyllMetadata
PandocHiLink pandocHakyllMetadataTitle  pandocHakyllMetadata




"hi link pandocStyleDelim            Comment
exe "hi pandocNonBreakingSpace"         . s:fg_red   .s:bg_none  .s:fmt_revr

"}}}
" License "{{{
" ---------------------------------------------------------------------
"
" Copyright (c) 2011 Ethan Schoonover
" 
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
" 
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
" 
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
" 
"}}}
