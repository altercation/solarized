Solarized style for the Kod editor
==================================
  
Developed by [Trip Leonard](http://trip.invisibledog.net)
  
This is a "solarized" style for the Kod editor (http://kodapp.com). 
The palette was developed by Ethan Schoonover 
(http://ethanschoonover.com/solarized)*.
Installation
============
  
Copy the file to ~/.kod/mystyle_solarized.css then tell Kod where to find it
by setting a configuration key:
 
    $ defaults write se.hunch.kod style/url ~/.kod/mystyle_solarized.css

Or run the provided bash script `setup` within the git directory
    
    $ ./setup

You might need to restart Kod for changes to take effect or 
select View->Reload style from the menu. Tho, `setup` should kill Kod.app.
Then, simply open your ~/.kod/mystyle.css in Kod -- when edited and saved Kod will
automatically reload the style, thus you see the effect of your 
alterations.

Usage
=====

Currently there is one .css file with the light commented out.
When you want to switch just comment out the dark, 
uncomment the light and save, Kod auto reloads when 
it notices that the file you just saved is the Kod CSS file.  
  
Screen shots
===
CSS Dark
---
![css dark](https://github.com/tripleonard/kod-solarized/raw/master/img/kod-css-dark.png)

CSS Light
---
![css light](https://github.com/tripleonard/kod-solarized/raw/master/img/kod-css-light.png)
SQL Dark
---
![sql dark](https://github.com/tripleonard/kod-solarized/raw/master/img/kod-sql-dark.png)
SQL Light
---
![sql light](https://github.com/tripleonard/kod-solarized/raw/master/img/kod-sql-light.png)

Colors used:
---
<table>
  <tr>
    <td>SOLARIZED</td>
    <td>HEX</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>base03</td>
    <td>#002b36</td>
    <td>8/4</td>
    <td>brblack</td>
  </tr>  
  <tr>
    <td>base02</td>
    <td>#073642</td>
    <td>0/4</td>
    <td>black</td>
  </tr>    
  <tr>
    <td>base01</td>
    <td>#586e75</td>
    <td>10/7</td>
    <td>brgreen</td>
  </tr>  
  <tr>
    <td>base00</td>
    <td>#657b83</td>
    <td>11/7</td>
    <td>bryellow</td>
  </tr> 
  <tr>
    <td>base0</td>
    <td>#839496</td>
    <td>12/6</td>
    <td>brblue</td>
  </tr>   
  <tr>
    <td>base1</td>
    <td>#93a1a1</td>
    <td>14/4</td>
    <td>brcyan</td>
  </tr>   
  <tr>
    <td>base2</td>
    <td>#eee8d5</td>
    <td>7/7</td>
    <td>white</td>
  </tr>
  <tr>
    <td>base3</td>
    <td>#fdf6e3</td>
    <td>15/7</td>
    <td>brwhite</td>
  </tr>
  <tr>
    <td>yellow</td>
    <td>#b58900</td>
    <td>3/3</td>
    <td>yellow</td>
  </tr> 
  <tr>
    <td>orange</td>
    <td>#cb4b16</td>
    <td>9/3</td>
    <td>brred</td>
  </tr>
  <tr>
    <td>red</td>
    <td>#d30102</td>
    <td>1/1</td>
    <td>red</td>
  </tr>
  <tr>
    <td>magenta</td>
    <td>#d33682</td>
    <td>5/5</td>
    <td>magenta</td>
  </tr>
  <tr>
    <td>violet</td>
    <td>#6c71c4</td>
    <td>13/5</td>
    <td>brmagenta</td>
  </tr>
  <tr>
    <td>blue</td>
    <td>#268bd2</td>
    <td>4/4</td>
    <td>blue</td>
  </tr>
  <tr>
    <td>cyan</td>
    <td>#2aa198</td>
    <td>6/6</td>
    <td>cyan</td>
  </tr>
  <tr>
    <td>green</td>
    <td>#859900</td>
    <td>2/2</td>
    <td>green</td>
  </tr>
</table>
