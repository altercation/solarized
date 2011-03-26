Solarized Colorscheme for Vim
=============================

Developed by Ethan Schoonover <es@ethanschoonover.com>

Visit the [Solarized Homepage][Solarized]
-----------------------------------------

See the [homepage for the Solarized colorscheme][Solarized] for screenshots, 
details and colorscheme versions for Vim, Mutt, popular terminal emulators and 
other applications.

Screenshots
-----------

[![solarized 
dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-dark.png)
[![solarized light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-light.png)

Downloads
---------

If you have come across this colorscheme via the [Vim-only repository] on 
github, or the [vim.org script] page see the link above to the Solarized 
homepage or visit the main [Solarized repository].

The [Vim-only repository] is kept in sync with the main [Solarized repository] 
and is for installation convenience only (with [Pathogen] or [Vundle], for 
instance).  Issues, bug reports, changelogs are centralized at the main 
[Solarized repository].

[Solarized]:            http://ethanschoonover.com/solarized
[Solarized repository]: https://github.com/altercation/solarized
[Vim-only repository]:  https://github.com/altercation/vim-colors-solarized
[vimorg-script]:        http://vim.org/script
[Pathogen]:             https://github.com/tpope/vim-pathogen
[Vundle]:               https://github.com/gmarik/vundle

Installation
------------

### Option 1: Manual installation

1.  Move `solarized.vim` to your `.vim/colors` directory. After downloading the 
    vim script or package:

        $ cd vim-colors-solarized/colors
        $ mv solarized.vim ~/.vim/colors/

### Option 2: Pathogen installation ***(recommended)***

1.  Download and install Tim Pope's [Pathogen].

2.  Next, move or clone the `vim-colors-solarized` directory so that it is 
    a subdirectory of the `.vim/bundle` directory.

    a. **Clone:** 

            $ cd ~/.vim/bundle
            $ git clone git://github.com/altercation/vim-colors-solarized.git

    b. **Move:**

        In the parent directory of vim-colors-solarized:
        
            $ mv vim-colors-solarized ~/.vim/bundle/

### Modify .vimrc

After either Option 1 or Option 2 above, put the following two lines in your 
.vimrc:

    set background=dark
    colorscheme solarized

or, for the light background mode of Solarized:

    set background=light
    colorscheme solarized

I like to have a different background in GUI and terminal modes, so I can use 
the following if-then. However, I find vim's background autodetection to be 
pretty good and, at least with MacVim, I can leave this background value 
assignment out entirely and get the same results.

    if has('gui_running')
        set background=light
    else
        set background=dark
    endif

See the [Solarized homepage][Solarized] for screenshots which will help you 
select either the light or dark background.

### IMPORTANT NOTE FOR TERMINAL USERS:

If you are going to use Solarized in Terminal mode (i.e. not in a GUI version 
like gvim or macvim), **please please please** consider setting your terminal 
emulator's colorscheme to used the Solarized palette. I've included palettes 
for some popular terminal emulator as well as Xdefaults in the official 
Solarized download available from [Solarized homepage][Solarized]. If you use 
Solarized without these colors, Solarized will by default use an approximate 
set of 256 colors. It isn't bad looking and has been extensively tweaked, but 
it's still not quite the real thing.

If you do use the custom terminal colors, simply add the following line 
*before* the `colorschem solarized` line:

    let g:solarized_termcolors=16

Advanced Configuration
----------------------

Solarized will work out of the box with just the two lines specified above but 
does include several other options that can be set in your .vimrc file.

Set these in your vimrc file prior to calling the colorscheme.
"
    option name               default     optional
    ------------------------------------------------
    g:solarized_termcolors=   256     |   16
    g:solarized_termtrans =   0       |   1
    g:solarized_degrade   =   0       |   1
    g:solarized_bold      =   1       |   0
    g:solarized_underline =   1       |   0
    g:solarized_italic    =   1       |   0
    g:solarized_style     =   "dark"  |   "light"
    g:solarized_contrast  =   "normal"|   "high" or "low"
    ------------------------------------------------

### Option Details

*   g:solarized_termcolors

    **The most important option** if you are using vim in terminal (non gui) 
    mode! See my diatribe above regarding terminal colors. This tells Solarized 
    to use the 256 degraded color mode if running in a 256 color capable 
    terminal.  Otherwise, if set to `16` it will use the terminal emulators 
    colorscheme (best option as long as you've set the emulators colors to the 
    Solarized palette).

*   g:solarized_termtrans

    If you use a terminal emulator with a transparent background and Solarized 
    isn't displaying the background color transparently, set this to 1 and 
    Solarized will use the default (transparent) background of the terminal 
    emulator. *urxvt* required this in my testing; Terminal.app/iTerm2 did not.

*   g:solarized_degrade

    For test purposes only; forces Solarized to use the 256 degraded color mode 
    to test the approximate color values for accuracy.

*   g:solarized_bold | g:solarized_underline | g:solarized_italic

    If you wish to stop Solarized from displaying bold, underlined or 
    italicized typefaces, simply assign a zero value to the appropriate 
    variable, for example: `let g:solarized_italic=0`

*   g:solarized_style

    Simply another way to force Solarized to use a dark or light background.  
    It's better to use `set background=dark` or `set background=light` in your 
    .vimrc file. This option is mostly used in scripts (quick background color 
    change) or for testing.

*   g:solarized_contrast

    Stick with normal! It's been carefully tested. Setting this option to high 
    or low does use the same Solarized palette but simply shifts some values up 
    or down in order to expand or compress the tonal range displayed.

### **IMPORTANT NOTE FOR TERMINAL USERS**

If you are running vim in a terminal, Solarized will run in 256 color mode if 
the terminal supports it, but those 256 colors are (in all 256 color terminal 
emulators) limited to a "degraded" color palette.  While the colors will all 
approximate the specific Solarized color values, if you prefer an accurate 
color palette you can set the ANSI colors in your terminal and use the 16 color 
terminal mode using the g:solarized_termcolors="16" option detailed below. The 
ANSI color map is specified in the table below and terminal color themes are 
available for download from the web page listed at the top of this file, 
including xorg defaul color values and themes for OS X Terminal.app and iTerm2.

Toggle Background Function
--------------------------

Here's a quick script that toggles the background color, using F5 in this 
example. You can drop this into .vimrc:

    function! ToggleBackground()
        if (w:solarized_style=="dark")
        let w:solarized_style="light"
        colorscheme solarized
    else
        let w:solarized_style="dark"
        colorscheme solarized
    endif
    endfunction
    command! Togbg call ToggleBackground()
    nnoremap <F5> :call ToggleBackground()<CR>
    inoremap <F5> <ESC>:call ToggleBackground()<CR>a
    vnoremap <F5> <ESC>:call ToggleBackground()<CR>

Code Notes
----------

Use folding to view the `solarized.vim` script with `foldmethod=marker` turned 
on.

I have attempted to modularize the creation of Vim colorschemes in this script 
and, while it could be refactored further, it should be a good foundation for 
the creation of any color scheme. By simply changing the sixteen values in the 
GUI section and testing in gvim (or mvim) you can rapidly prototype new 
colorschemes without diving into the weeds of line-item editing each syntax 
highlight declaration.

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

License
-------
Copyright (c) 2011 Ethan Schoonover

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

