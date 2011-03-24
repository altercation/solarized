Solarized Colorscheme for Mutt
==============================

Developed by Ethan Schoonover <es@ethanschoonover.com>

See the [homepage for the Solarized colorscheme][solarized] for versions for 
Vim, popular terminal emulators and other applications.

If you have come across this colorscheme via the [mutt-only repository on 
github][mutt-solarized-github], see the link above to the Solarized homepage or
visit the [github repository for Solarized][solarized-github].

[solarized]: http://ethanschoonover.com/solarized
[solarized-github]: https://github.com/altercation/solarized
[mutt-solarized-github]: https://github.com/altercation/mutt-colors-solarized

Installation
------------

1. Move the mutt-colors-solarized directory into the same location as your 
   muttrc. Alternately, you can copy just the version of the colorscheme you 
   will be using (see below for details).

2. Source the colorscheme in your muttrc. Only one of the following, depending 
   on the light or dark background you wish to use, and whether you want to use 
   the native 16 colors of your terminal emulator or the approximatation 
   provided by the 256 color values. See note below for recommendations.

    source $MAILCONF/mutt-colors-solarized/mutt-colors-solarized-dark-16.muttrc
    source $MAILCONF/mutt-colors-solarized/mutt-colors-solarized-light-16.muttrc
    source $MAILCONF/mutt-colors-solarized/mutt-colors-solarized-dark-256.muttrc
    source $MAILCONF/mutt-colors-solarized/mutt-colors-solarized-light-256.muttrc

Note: You can safely ignore the compile colors script and the template file.  
They are used only for creating the actual colorscheme files. If you want to 
modify the colorscheme or colors, you can use the compile script and template 
to do so.

Which Variation?
----------------

See the [Solarized homepage][solarized] for screenshots which will help you 
select either the light or dark background.

A thornier question is whether to use the 16 color version or the 256 color 
version. I have spent a great deal of time refining this colorscheme and for 
the most accurate experience I recommend that you set your terminal emulator to 
use the Solarized colorvalues with the 16 color mutt colorschemes in this 
distribution. Terminal colorschemes/values are available at the homepage linked 
to above.

The 256 color versions provide an approximate experience of the colorscheme in 
most regards, though the carefully selected monotones are crudely replaced by 
neutral tones.

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
