Solarized Colorscheme for Vim
=============================

Developed by Ethan Schoonover <es@ethanschoonover.com>

See the [homepage for the Solarized colorscheme][solarized] for screenshots, 
details and colorscheme versions for Vim, Mutt, popular terminal emulators and 
other applications.

If you have come across this colorscheme via the [vim-only repository on 
github][vim-solarized-github], or the [vim.org script page][vimorg-script] see 
the link above to the Solarized homepage or
visit the [github repository for Solarized][solarized-github].

[solarized]: http://ethanschoonover.com/solarized
[solarized-github]: https://github.com/altercation/solarized
[vim-solarized-github]: https://github.com/altercation/vim-colors-solarized
[vimorg-script]: http://vim.org/script

Installation
------------

Put the following two lines in your vimrc:

  set background=dark
  colorscheme solarized

or, for the light background mode of Solarized:

  set background=light
  colorscheme solarized

See the [Solarized homepage][solarized] for screenshots which will help you 
select either the light or dark background.

Advanced Configuration
----------------------

**IMPORTANT NOTE FOR TERMINAL USERS**
If you are running vim in a terminal, Solarized will run in 256 color mode if 
the terminal supports it, but those 256 colors are (in all 256 color terminal 
emulators) limited to a "degraded" color palette.  While the colors will all 
approximate the specific Solarized color values, if you prefer an accurate 
color palette you can set the ANSI colors in your terminal and use the 16 color 
terminal mode using the g:solarized_termcolors="16" option detailed below. The 
ANSI color map is specified in the table below and terminal color themes are 
available for download from the web page listed at the top of this file, 
including xorg defaul color values and themes for OS X Terminal.app and iTerm2.

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

