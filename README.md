Solarized
=========

**A precision colorscheme for machines and people.** Solarized is a sixteen 
color palette (eight monotones, eight accent colors) designed for use with 
terminal and gui applications and has several unique properties. It has been 
designed with both precise [CIELAB] lightness relationships and a refined set 
of hues based on fixed color wheel relationships. It has been tested 
extensively in real world use on color calibrated displays and in a variety of 
lighting conditions.

Available in formats for:

* **Vim** (a repository with *just* the Vim colorscheme is [available 
  here](https://github.com/altercation/vim-colors-solarized), for use with 
  Pathogen, etc.)
* **Mutt** e-mail client (a repository with *just* the Mutt colorscheme is 
  [available here](https://github.com/altercation/mutt-colors-solarized))
* Adobe Photoshop Palette
* GIMP Palette
* Apple Color Picker Palette
* iTerm2
* OS X Terminal.app
* Xresources / Xdefaults

Download
--------

Downloads, screenshots and more information is available from the project 
homepage: <http://ethanschoonover.com/solarized>.

The git repository is at: <https://github.com/altercation/solarized>.

The vim-only colorscheme (Pathogen ready) is available at: <https://github.com/altercation/vim-colors-solarized>.

The mutt-only variants can be cloned from https://github.com/altercation/mutt-colors-solarized

Note that through the magic of 
[git-subtree](https://github.com/apenwarr/git-subtree) these repositories are 
all kept in sync, so you can pull any of them and get the most up-to-date 
version.

What
----

Solarized is a sixteen color palette (eight monotones, eight accent colors) 
designed for use with terminal and gui applications and has several unique 
properties. It has been designed with both precise [CIELAB] lightness 
relationships and a refined set of hues based on fixed color wheel 
relationships. It has been tested extensively in real world use on color 
calibrated displays and in a variety of lighting conditions.

Features
--------

1. **Selective contrast**

    Solarized reduces brightness based contrast in general. Modern display 
    devices are capable of blasting your retina clean off with max brightness 
    and I found my eyes growing tired using high contrast colorschemes, even 
    with the brightness turned down. Solarized reduces *brightness contrast* 
    but, unlike many low contrast colorschemes, retains *contrasting hues* 
    (based on colorwheel relations) for syntax highlighting readability.

2. **Dual modes: Dark/Light**

    I switch between dark and light modes when editing text even when editing
    different types of files. Solarized retains the same selective contrast 
    relationships and overall feel when switching between the light and dark 
    background modes. A *lot* of thought, planning and testing has gone into 
    making both modes feel like part of a unified colorscheme.

3. **16/5 Palette modes**

    Solarized works as a sixteen color palette for compatibility with comment
    terminal based applications / emulators. It has been designed to scale down 
    to a variety of five color palettes (four base monotones and one accent 
    color) for use in design work, such as web development.

4.  **Personality that doesn't crowd out the room**

    Solarized can be used as a pure monotone palette, a five-up monotone+accent 
    colorscheme or in full on sixteen color mode for full syntax highlighting.  
    In every case it retains a strong identity but doesn't overwhelm. Like any 
    good supporting actor, it keeps the story moving without chewing up the 
    scenery.

5.  **Precision**

    The monotones have symmetric CIELAB lightness differences, so switching 
    from dark to light mode retains the same perceived contrast in brightness 
    between each value. Each mode is equally readable. The accent colors are 
    based off specific colorwheel relations and subsequently translated to 
    CIELAB to ensure perceptual uniformity in terms of lightness. The hues 
    themselves, as with the monotone \*A\*B values, have been adjusted within 
    a small range to achieve the most pleasing combination of colors.

Installation
------------

Installation instructions for each version of the colorscheme are included in 
the subdirectory README files. Note that for Vim (and possibly for Mutt) you 
may want to clone the specific repository (for instance if you are using 
Pathogen).  See the links at the top of this file.

[CIELAB](http://en.wikipedia.org/wiki/Lab_color_space)
