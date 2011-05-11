Solarized Colorscheme for IntelliJ IDEA
=======================================

Original Solarized color scheme developed by Ethan Schoonover <es@ethanschoonover.com>  

Adapted for IntelliJ IDEA by:  
Adam Vandenberg <flangy@gmail.com>  
Johan Kaving <johan@kaving.se>

Visit the [Solarized homepage]
------------------------------

See the [Solarized homepage] for screenshots, 
details and colorscheme versions for Vim, Mutt, popular terminal emulators and 
other applications.

Downloads
---------

If you have come across this colorscheme via the [IntelliJ-only repository] on 
github see the link above to the Solarized homepage or visit the main [Solarized repository].

The [IntelliJ-only repository] is kept in sync with the main [Solarized repository].
Issues, bug reports, changelogs are centralized at the main [Solarized repository].

[Solarized homepage]:   http://ethanschoonover.com/solarized
[Solarized repository]: https://github.com/altercation/solarized
[IntelliJ-only repository]:  https://github.com/jkaving/intellij-colors-solarized

Installation
------------

### Option 1: Install using "Import Settings..."

1. Go to `File | Import Settings...` and specify the `intellij-colors-solarized` directory.
 Clik `OK` in the dialog that appears.

2. Restart IntelliJ IDEA

3. Go to `Preferences | Editor | Colors & Fonts` and select one of the new 
color themes.

### Option 2: Manual installation

1.  Copy `Solarized Dark.xml` and `Solarized Light.xml` to your IntelliJ IDEA preferences
color directory.  
On Mac OS X this is typically located in `~/Library/Preferences/IntelliJIdea10/colors` or `~/Library/Preferences/IntelliJIdea10CE/colors` (for the Community Edition).  
On Windows it is in `Documents and Settings/<user>/.IntelliJIdea10/config/colors`.
        
2. Restart IntelliJ IDEA

3. Go to `Preferences | Editor | Colors & Fonts` and select one of the new 
color themes.

Note About Fonts
-----------------
Unfortunately, font settings are included in the color settings files.
You should probably modify these in `Preferences | Editor | Colors & Fonts | Font`
after adding the color schemes to your IntelliJ IDEA installation.

Note About Committing Changes
-----------------------------
If you want to commit updates to the XML color scheme files, make sure to run the `buildjar.sh` script before committing to generate 
an updated `settings.jar` file as well. 
*The script has been tested on OS X, on other operating systems you're on your own.*