Solarized Changelog
===================

1.0.0beta2
----------

Changes:

*   [global] Modified red from L\*a\*b lightness value 45 to 50 to bring it in
    line with the other accent colors and address bleed into dark background on 
    some displays, as well as reducing shift of red against base03 when viewed 
    with glasses (chromatic aberration). All instances of the colorscheme and 
    palettes updated to new red.

*   [palettes] Changed default OS X color picker palatte swatches to tagged
    colors (sRGB) and included alternate palette with untagged color swatches 
    for advanced users (v1.0.0beta1 had untagged as default).

*   [vim] Removed default italicized font in terminal mode in the Solarized Vim
    colorscheme (many terminal emulators display Vim italics as reversed type).  
    Italics still used in GUI mode by default and can still be turned off in 
    both modes by setting a variable: `let g:solarized_italic=0`.

*   [vim] Reverted to global variables in sample toggle-background script (in
    vim readme) to fix cases where new tabs don't read window variables

1.0.0beta1
----------

First public release. Included:

* Adobe Photoshop Swatches
* Apple Color Picker Palette
* Gimp Palette
* iTerm2 colorschemes
* Mutt mail client colorschemes
* OS X Terminal.app colors
* Vim Colorscheme
* Xresources colors

