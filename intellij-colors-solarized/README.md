Solarized Colorscheme for IntelliJ IDEA
=======================================

Original Solarized color scheme developed by Ethan Schoonover <es@ethanschoonover.com>  

Adapted for IntelliJ IDEA by:  
Adam Vandenberg <flangy@gmail.com>  
Johan Kaving <johan@kaving.se>

Visit the [Solarized homepage]
------------------------------

See the [Solarized homepage] for screenshots, 
details and color scheme versions for Vim, Mutt, popular terminal emulators and 
other applications. These versions can also be found in the main [Solarized repository] 
on GitHub.

Unfortunately the IntelliJ subtree in the main repository has not been updated and is out-of-sync with this
repository.

For IntelliJ this [IntelliJ-only repository] is therefore recommended over the main repository.

[Solarized homepage]:   http://ethanschoonover.com/solarized
[Solarized repository]: https://github.com/altercation/solarized
[IntelliJ-only repository]:  https://github.com/jkaving/intellij-colors-solarized

Status
------------

These color scheme files are primarily tested with IntelliJ IDEA 12 Community Edition.
They might work with other versions of IntelliJ IDEA as well as other JetBrains tools
(e.g. PhpStorm and PyCharm).

This table lists the languages (and other sections under `Preferences | Editor | Colors & Fonts`)
for which the syntax highlighting has been adapted to the Solarized color scheme:

<table>
	<tr>
		<th>Language/Section</th>
		<th>Supported</th>
		<th>Note</th>
	</tr>
	<tr>
		<td><a href="http://developer.android.com/tools/help/logcat.html">Android
Logcat</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://httpd.apache.org">Apache Config</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="https://github.com/bem/bemhtml">BEMHTML</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Bash</td>
		<td align="center"><b>Yes</b></td>
		<td>(<a href="http://www.ansorg-it.com/en/products_bashsupport.html">BashSupport</a> 1.1beta14 or later)</td>
	</tr>
	<tr>
		<td><a href="http://www.buildout.org">Buildout config</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>CMD</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>CSS</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Clojure Templates</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://coffeescript.org">CoffeeScript</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Custom Templates</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.dartlang.org">Dart</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Debugger</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Diff</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="https://www.djangoproject.com">Django</a>/<a href="http://jinja.pocoo.org/docs/">Jinja2 Template</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.erlang.org">Erlang</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	 </tr>
	 <tr>
		<td>File Status</td>
		<td align="center">No</td>
		<td></td>
	</tr>
	<tr>
		<td>General</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
    <tr>
        <td><a href="http://cukes.info">Gherkin (Cucumber)</a></td>
        <td align="center"><b>Yes</b></td>
		<td></td>
    </tr>
	<tr>
		<td><a href="http://code.google.com/p/go/">Google Go</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>GQL</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://groovy.codehaus.org">Groovy</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://haml.info">HAML</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>HTML</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.haskell.org">Haskell</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://jflex.de">JFlex</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Java</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>JavaScript</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>JSP</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://jodd.org/doc/props.html">Jodd props file</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://kotlin.jetbrains.org">Kotlin</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://lesscss.org">LESS</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Localization file</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.lua.org">Lua</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.makotemplates.org">Mako Template</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://daringfireball.net/projects/markdown/">Markdown</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Objective-C</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>PHP</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Properties</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Python</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>ReST file</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>RegExp</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://sass-lang.com">SASS</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>SQL</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.scala-lang.org">Scala</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>Tea</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://twig.sensiolabs.org">Twig</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td>XML</td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.w3.org/TR/xpath/">XPath</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.yaml.org">YAML</a></td>
		<td align="center"><b>Yes</b></td>
		<td></td>
	</tr>
</table>


Installation
------------

### Option 1: Install using "Import Settings..."

1. Go to `File | Import Settings...` and specify the `intellij-colors-solarized` directory.
 Click `OK` in the dialog that appears.

2. Restart IntelliJ IDEA

3. Go to `Preferences | Editor | Colors & Fonts` and select one of the new 
color themes.

### Option 2: Manual installation

1.  Copy `Solarized Dark.xml` and `Solarized Light.xml` to your IntelliJ IDEA preferences
    color directory. The directory varies, depending on which JetBrains IDE you are using. It
    is typically in:

    *Mac OS X*
    * `~/Library/Preferences/IntelliJIdea12/colors` (IntelliJ IDEA 12 Ultimate Edition)
    * `~/Library/Preferences/IdeaIC12/colors` (IntelliJ IDEA 12 Community Edition),
    * `~/Library/Preferences/WebIDE50/colors` (PHPStorm 5.0).

    *Windows*
    * `Documents and Settings/<user>/.IdeaIC12/config/colors` (IntelliJ IDEA 12 Community Edition)
        
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
If you want to commit updates to the XML color scheme files, make sure to run the `buildjar.sh` or `buildjar.bat` script before committing to generate 
an updated `settings.jar` file as well. 
*The scripts have been tested on OS X and Windows, on other operating systems you're on your own.*
