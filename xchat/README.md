# Solarized Colorscheme for XChat

This is a port of the [Solarized][solarized-homepage] colorscheme for
[XChat][xchat-homepage]:  
[XChat Solarized Github Repository][xchat-solarized-github]

Original Solarized colorscheme developed by:  
**Ethan Schoonover**  
<es@ethanschoonover.com>  
[Solarized Github Repository][solarized-github]

## Visit the [Solarized homepage][solarized-homepage]

If you have come across this colorscheme via the
[XChat-only repository on github][xchat-solarized-github], see the
[Solarized homepage][solarized-homepage] for screenshots, details, and
colorscheme versions for Vim, Mutt, popular terminal emulators, and other
applications.

[solarized-github]: https://github.com/altercation/solarized
[solarized-homepage]: http://ethanschoonover.com/solarized
[xchat-solarized-github]: https://github.com/jtmohr/xchat-colors-solarized
[xchat-homepage]: http://xchat.org/

## Screenshots
![Solarized Dark](http://img208.imageshack.us/img208/6127/xchatsolarizeddarkcolor.png)

![Solarized Light](http://img855.imageshack.us/img855/9378/xchatsolarizedlightcolo.png)

## Installation

### XChat Data Directories
Replace `<username>` with your actual username.

* **Windows Vista/7:**  
`C:\Users\<username>\AppData\Roaming\X-Chat 2\`
* **Windows XP:**  
`C:\Documents and Settings\<username>\Application Data\X-Chat 2\`
* **Linux:**  
`~/.xchat2/`

### pevents.conf
The Solarized theme for XChat was designed using the default `pevents.conf`
file.

The only reason you may need to replace your existing `pevents.conf` file is if
it is heavily modified.

The `pevents.conf` included with the theme has 2 modifications:

1. Nick names are wrapped with angle brackets.  
https://toxin.jottit.com/xchat_text_events#03

1. Mode characters ( ~, &, @, %, +) are shown next to nick names.  
http://xchat.org/faq/#q26

### Install the Solarized theme
1. Exit XChat
1. Back-up the current `colors.conf` and `pevents.conf` files located in
   the appropriate XChat Data Directory
1. Copy the `solarized-dark-colors.conf` or `solarized-light-colors.conf` file
   to the appropriate XChat Data Directory and rename it to `colors.conf`
1. **(Optional)** Copy the `pevents.conf` file to the appropriate XChat Data
   Directory
1. Restart XChat

## Color Values

### Solarized Dark
    mIRC colors are mapped 0-15
    ===========================
    XChat   Color
    ---------------
    0       Default
    1       Default
    2       Default
    3       Default
    4       Default
    5       Default
    6       Default
    7       Default
    8       Default
    9       Default
    10      Default
    11      Default
    12      Default
    13      Default
    14      Default
    15      Default

    Local colors are mapped 16-31
    =============================
    XChat   Solarized   Hex         Color Mapping
    -----   -------------------     ------------------------------------------------
    16      Orange      #cb4b16     Motd Indicator
    17      Base 1      #93a1a1     User level indicators ( ~, &, @, %, +)
    18      Blue        #268bd2     Primary Nick Color (when not using "Colored nick names") / Channel Action/Message
    19      Cyan        #2aa198     Nick Color #1 - Join / You Join
    20      Violet      #6c71c4     Nick Color #2
    21      Magenta     #d33682     Channel Msg / Action Hilight
    22      Blue        #268bd2     Nick Color #3 / Server Messages
    23      Violet      #6c71c4     Quit / Part Messages
    24      Red         #dc322f     Nick Color #4 / Notify/Ignore Header
    25      Yellow      #b58900     Nick Color #5 / User's Angle Bracket Color
    26      Magenta     #d33682     Nick Color #6 / DCC/Channel Messages
    27      Base 01     #586e75     Nick Color #7 / Some Whois / Nick Angle Bracket Color
    28      Green       #859900     Nick Color #8 / Some Whois / NickServ dashes
    29      Orange      #cb4b16     Nick Color #9 / Channel Topic Color
    30      Yellow      #b58900     User's Message / Some Whois / Some DCC
    31      Orange      #cb4b16     User's Nick Color

    XChat special colors are mapped at 256+
    =======================================
    XChat   Solarized   Hex         Color Mapping
    -----   -------------------     ------------------------------------------------
    256     Base 03     #002b36     Marking Text Forground
    257     Base 01     #586e75     Marking Text Background
    258     Base 0      #839496     Text Colors Foreground
    259     Base 03     #002b36     Text Colors Background
    260     Cyan        #2aa198     Marker Line
    261     Blue        #268bd2     New Data
    262     Orange      #cb4b16     Highlight
    263     Yellow      #b58900     New Message
    264     Base 01     #586e75     Away User
    265     Magenta     #d33682     Spell Checker

### Solarized Light
    mIRC colors are mapped 0-15
    ===========================
    XChat   Color
    ---------------
    0       Default
    1       Default
    2       Default
    3       Default
    4       Default
    5       Default
    6       Default
    7       Default
    8       Default
    9       Default
    10      Default
    11      Default
    12      Default
    13      Default
    14      Default
    15      Default

    Local colors are mapped 16-31
    =============================
    XChat   Solarized   Hex         Color Mapping
    -----   -------------------     ------------------------------------------------
    16      Orange      #cb4b16     Motd Indicator
    17      Base 01     #586e75     User level indicators ( ~, &, @, %, +)
    18      Blue        #268bd2     Primary Nick Color (when not using "Colored nick names") / Channel Action/Message
    19      Cyan        #2aa198     Nick Color #1 - Join / You Join
    20      Violet      #6c71c4     Nick Color #2
    21      Magenta     #d33682     Channel Msg / Action Hilight
    22      Blue        #268bd2     Nick Color #3 / Server Messages
    23      Violet      #6c71c4     Quit / Part Messages
    24      Red         #dc322f     Nick Color #4 / Notify/Ignore Header
    25      Yellow      #b58900     Nick Color #5 / User's Angle Bracket Color
    26      Magenta     #d33682     Nick Color #6 / DCC/Channel Messages
    27      Base 1      #93a1a1     Nick Color #7 / Some Whois / Nick Angle Bracket Color
    28      Green       #859900     Nick Color #8 / Some Whois / NickServ dashes
    29      Orange      #cb4b16     Nick Color #9 / Channel Topic Color
    30      Yellow      #b58900     User's Message / Some Whois / Some DCC
    31      Orange      #cb4b16     User's Nick Color

    XChat special colors are mapped at 256+
    =======================================
    XChat   Solarized   Hex         Color Mapping
    -----   -------------------     ------------------------------------------------
    256     Base 3      #fdf6e3     Marking Text Forground
    257     Base 1      #93a1a1     Marking Text Background
    258     Base 00     #657b83     Text Colors Foreground
    259     Base 3      #fdf6e3     Text Colors Background
    260     Cyan        #2aa198     Marker Line
    261     Blue        #268bd2     New Data
    262     Orange      #cb4b16     Highlight
    263     Yellow      #b58900     New Message
    264     Base 1      #93a1a1     Away User
    265     Magenta     #d33682     Spell Checker
