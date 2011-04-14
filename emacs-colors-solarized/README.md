Solarized
=========

### [See official homepage for full content](http://ethanschoonover.com/solarized)

## Precision colors for machines and people

[![solarized dualmode](https://github.com/altercation/solarized/raw/master/img/solarized-yinyang.png)](#features)\


Solarized is a sixteen color palette (eight monotones, eight accent colors) 
designed for use with terminal and gui applications. It has several [unique 
properties](#features). I designed this colorscheme with both precise 
[CIELAB](http://en.wikipedia.org/wiki/Lab_color_space) lightness relationships 
and a refined set of hues based on fixed color wheel relationships. It has been 
tested extensively in real world use on color calibrated displays (as well as 
uncalibrated/intentionally miscalibrated displays) and in a variety of lighting 
conditions.

![solarized palette](https://github.com/altercation/solarized/raw/master/img/solarized-palette.png)\

Currently available in formats for (cf [screenshots](#screenshots) below):

* **Vim** (the Vim-only portion of Solarized is [available 
here](https://github.com/altercation/vim-colors-solarized), for use with 
Pathogen, etc.)
* **Mutt** e-mail client (*just* the Mutt colorscheme is [available 
here](https://github.com/altercation/mutt-colors-solarized))
* **Xresources** / Xdefaults
* **iTerm2**
* OS X **Terminal.app**
* Adobe Photoshop Palette (inc. L\*a\*b values)
* Apple Color Picker Palette
* GIMP Palette

Don't see the application you want to use it in? Download the palettes (or pull 
the values from the table below) and create your own. Submit it back and I'll  
happily note the contribution and include it on this page.

**Note:** I am still tweaking the Vim highlighting for specific syntaxes and 
welcome feedback on these.

Download
--------

### [Click here to download latest version](http://ethanschoonover.com/files/solarized/solarized.tar.gz)

Or use the following links to access application specific downloads and git 
repositories:

*   **Git repo:**

    The full git repository is at: <https://github.com/altercation/solarized>
    Get it using the following command:

        $ git clone git://github.com/altercation/solarized.git

*   **Vim only:**

    The vim-only colorscheme (Pathogen ready) is available at: 
    <https://github.com/altercation/vim-colors-solarized>.
    
        $ git clone git://github.com/altercation/vim-colors-solarized.git

    You can also download it from [vim.org](http://www.vim.org/scripts/script.php?script_id=3520).

*   **Mutt only:**

    The mutt-only variants can be cloned from 
    <https://github.com/altercation/mutt-colors-solarized>

        $ git clone git://github.com/altercation/mutt-colors-solarized.git

*   **Canonical Project Page:**

    Downloads, screenshots and more information are always available from the
    project page: <http://ethanschoonover.com/solarized>

Note that through the magic of 
[git-subtree](https://github.com/apenwarr/git-subtree) these repositories are 
all kept in sync, so you can pull any of them and get the most up-to-date 
version.

Features
--------

1. **Selective contrast**

    On a sunny summer day I love to read a book outside. Not right in the sun; 
    that's too bright. I'll hunt for a shady spot under a tree. The shaded 
    paper contrasts with the crisp text nicely. If you were to actually measure 
    the contrast between the two, you'd find it is much lower than black text 
    on a white background (or white on black) on your display device of choice.
    Black text on white from a computer display is akin to reading a book in 
    direct sunlight and tires the eye.

    ![solarized selective contrast](https://github.com/altercation/solarized/raw/master/img/solarized-selcon.png)\

    Solarized reduces *brightness contrast* but, unlike many low contrast 
    colorschemes, retains *contrasting hues* (based on colorwheel relations) 
    for syntax highlighting readability.

2. **Both sides of the force**

    ![solarized dualmode](https://github.com/altercation/solarized/raw/master/img/solarized-dualmode.png)\

    I often switch between dark and light modes when editing text and code.
    Solarized retains the same selective contrast relationships and overall 
    feel when switching between the light and dark background modes. A *lot* of 
    thought, planning and testing has gone into making both modes feel like 
    part of a unified colorscheme.

3. **16/5 palette modes**

    ![solarized palettes](https://github.com/altercation/solarized/raw/master/img/solarized-165.png)\

    Solarized works as a sixteen color palette for compatibility with common
    terminal based applications / emulators. In addition, it has been carefull 
    designed to scale down to a variety of five color palettes (four base 
    monotones plus one accent color) for use in design work such as web design.
    In every case it retains a strong personality but doesn't overwhelm.

5.  **Precision, symmetry**

    ![solarized symmetry](https://github.com/altercation/solarized/raw/master/img/solarized-sym.png)\

    The monotones have symmetric CIELAB lightness differences, so switching 
    from dark to light mode retains the same perceived contrast in brightness 
    between each value. Each mode is equally readable. The accent colors are 
    based off specific colorwheel relations and subsequently translated to 
    CIELAB to ensure perceptual uniformity in terms of lightness. The hues 
    themselves, as with the monotone \*a\*b values, have been adjusted within 
    a small range to achieve the most pleasing combination of colors.

    This makes colorscheme inversion trivial. Here, for instance, is a sass 
    (scss) snippet that inverts solarized based on the class of the html tag 
    (e.g. `<html class="dark red">` to give a dark background with red accent):

        $base03:    #002b36;
        $base02:    #073642;
        $base01:    #586e75;
        $base00:    #657b83;
        $base0:     #839496;
        $base1:     #93a1a1;
        $base2:     #eee8d5;
        $base3:     #fdf6e3;
        $yellow:    #b58900;
        $orange:    #cb4b16;
        $red:       #d30102;
        $magenta:   #d33682;
        $violet:    #6c71c4;
        $blue:      #268bd2;
        $cyan:      #2aa198;
        $green:     #859900;
        @mixin rebase($rebase03,$rebase02,$rebase01,$rebase00,$rebase0,$rebase1,$rebase2,$rebase3) 
        {
            background-color:$rebase03;
            color:$rebase0;
            * { color:$rebase0; }
            h1,h2,h3,h4,h5,h6 { color:$rebase1; border-color: $rebase0; }
            a, a:active, a:visited { color: $rebase1; }
        }
        @mixin accentize($accent) {
            a, a:active, a:visited, code.url { color: $accent; }
            h1,h2,h3,h4,h5,h6 {color:$accent}
        }
        /* light is default mode, so pair with general html definition */
        html, .light { @include rebase($base3,$base2,$base1,$base0,$base00,$base01,$base02,$base03)}
        .dark  { @include rebase($base03,$base02,$base01,$base00,$base0,$base1,$base2,$base3)}
        html * {
            color-profile: sRGB;
            rendering-intent: auto;
        }

Installation
------------

Installation instructions for each version of the colorscheme are included in 
the subdirectory README files. Note that for Vim (and possibly for Mutt) you 
may want to clone the specific repository (for instance if you are using 
Pathogen). See the links at the top of this file.

Font Samples
------------

Solarized has been designed to handle fonts of various weights and retain 
readability, from the classic Terminus to the beefy Menlo.

![font samples - light](https://github.com/altercation/solarized/raw/master/img/solarized-fontsamples-light.png)
![font samples - dark](https://github.com/altercation/solarized/raw/master/img/solarized-fontsamples-dark.png)

Clockwise from upper left: Menlo, Letter Gothic, Terminus, Andale Mono

Screenshots
-----------

Click to view.

### Mutt

[![mutt dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-mutt-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-mutt-dark.png)
[![mutt light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-mutt-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-mutt-light.png)

### C (Vim)

[![c dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-c-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-c-dark.png)
[![c light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-c-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-c-light.png)

### Haskell (Vim)

[![haskell dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-haskell-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-haskell-dark.png)
[![haskell light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-haskell-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-haskell-light.png)

### HTML (Vim)

[![html dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-html-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-html-dark.png)
[![html light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-html-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-html-light.png)

### Java (Vim)

[![java dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-java-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-java-dark.png)
[![java light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-java-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-java-light.png)

### Pandoc Markdown (Vim)

These screen shots show Vim running with my own [Pandoc Kit 
Syntax](/pandockit).

[![pandoc dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-pandoc-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-pandoc-dark.png)
[![pandoc light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-pandoc-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-pandoc-light.png)

### Perl (Vim)

[![perl dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-perl-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-perl-dark.png)
[![perl light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-perl-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-perl-light.png)

### Python (Vim)

[![python dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-python-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-python-dark.png)
[![python light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-python-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-python-light.png)

### Ruby (Vim)

[![ruby dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-dark.png)
[![ruby light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-ruby-light.png)

### TeX (Vim)

[![tex dark](https://github.com/altercation/solarized/raw/master/img/solarized-screen-tex-dark-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-tex-dark.png)
[![tex light](https://github.com/altercation/solarized/raw/master/img/solarized-screen-tex-light-th.png)](https://github.com/altercation/solarized/raw/master/img/solarized-screen-tex-light.png)


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
    red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
    magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
    violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
    blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
    cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
    green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
    
