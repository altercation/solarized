# Solarized colors for Qt Creator

See Ethan's [Solarized page](http://ethanschoonover.com/solarized) for the 
background information.

[Dedicated repository of this port](https://github.com/artm/qtcreator-solarized-syntax).

[Main Solarized repository](https://github.com/altercation/solarized).

![Qt Creator with solarized (light) style](https://github.com/artm/qtcreator-solarized-syntax/raw/master/QtCreator.png)

## Notes

At this point only code editor's colors are affected. If you've
installed apple-colorpalette-solarized you can choose compatible 
color for gui gradients, but most gui widgets and dialogs are 
unaffected by this choice.

On some platforms (Linux?) Qt style can be controlled by 
`~/.config/Trolltech.conf` file, in which case you might find [gist by
booiiing (Patric Schenke)](https://gist.github.com/929469) useful.

Apparently, Qt Creator:

 - ignores some of the attributes (e.g. `background` of
   `CurrentLineNumber`, `foreground` of `SearchResult`)
 - derives extra colors from the style (for example for the backgrounds 
   of nested blocks)
 - derives gradients from some colors (e.g. `Occurences`). I haven't
   found a way to control all aspects of these elements. I let Qt
   Creator control the color of `Occurences.Rename` and (in the light 
   style) of `SearchScope`)
 - composes the gradients / backgrounds in some cases which makes the
   result differ from style color. This makes the current line background
   lighter then expected, for example.
 - different types of background highlight which keep the thext color,
   mean I had to deviate from the canonical solarized.


I use light theme myself, dark one will probably have more issued at any given 
time.

## Installation

### Linux / Mac OS X

Use either:

    ln solarized-*.xml ~/.config/Nokia/qtcreator/styles

or:

    cp solarized-*.xml ~/.config/Nokia/qtcreator/styles

to install styles.

### Windows

On Windows XP styles should go to:

    Documents and Settings\<user name>\Application Data\Nokia\qtcreator\styles

On Windows 7:

    Users\<user name>\AppData\Roaming\Nokia\qtcreator\styles



