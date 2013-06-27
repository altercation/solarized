# Solarized for Gedit

## Precision colors for machines and people - **Now with more Gedit!**

---

### Solarized

Solarized was created by [Ethan Schoonover][ES] and you can find out more
about the design work that went into it on his [project page][ES-solarized]. If
you would like to use Solarized in editors other than Gedit or on your terminal,
Ethan hosts the [main repository][SolarizedRepo] which combines all the available
ports in one place.

### Solarized for Gedit

Solarized was initially ported for Gedit by [Matthew Cantelon][MC] and can be
found at <http://github.com/mattcan/solarized-gedit>.

### Screenshots

![Light theme][LightImg]
![Dark theme][DarkImg]

### Installation

You can download the files in one of two ways:

* using `git clone git://github.com/mattcan/solarized-gedit.git`
* using the **Download** button to get the ZIP file and extracting the files to
  a folder

Once the files are on your PC, copy `solarized-light.xml` and `solarized-dark.xml`
to one of these folders:

* if you are the only user on your computer

		cp solarized-* ~/.local/share/gedit/styles

* if you want everyone on your PC to be able to use the styles (_path
  below is for Ubuntu_)

		sudo cp solarized-* /usr/share/gtksourceview-3.0/styles
		
You can also use the built installer (_has only been tested with Ubuntu 12.10_)
		
### Roadmap

There are a few things that still need to be worked out...

1. Clean up the **c:** specific style definitions
1. Add support for further custom style definitions
	
[ES]: http://ethanschoonover.com
[ES-Solarized]: http://ethanschoonover.com/solarized
[SolarizedRepo]: https://github.com/altercation/solarized
[MC]: http://matthewcantelon.ca
[LightImg]: https://github.com/mattcan/solarized-gedit/raw/master/img/solarized_light.png
[DarkImg]: https://github.com/mattcan/solarized-gedit/raw/master/img/solarized_dark.png
