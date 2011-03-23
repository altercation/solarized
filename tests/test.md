% Pandoc Test File
% Ethan Schoonover
% March 22, 2011

%% format: markdown+lhs

The following blockquote can *optionally* be shown as Literate Haskell using 
a global variable in your .vimrc or a __*mode*line__ such as the one above
specifying the format of the document and the +lhs suffix

> import Hakyll
> main :: IO ()
> main = hakyll $ do
>     compile "css/*" $ byExtension (error "Not a (S)CSS file")

Using *Pandoc*
=============

In this document the technical terms `water` and `ice` will be replaced by 
H~2~O.^[a contrived footnote]

## Heading styles can be mixed

And matched, and they still fold **properly**

* * * *

Some code:

    a verbatim or "code" block

[^1]:  The exception is for `odt`.  Since this is a binary output format,
       an output file must be specified explicitly.

Note that you can specify multiple input files on the command line.
`pandoc` will concatenate them all (with blank lines between them)
before parsing:

    pandoc -s ch1.txt ch2.txt refs.txt > book.html

(The `-s` option here tells `pandoc` to produce a standalone HTML file,
with a proper header, rather than a fragment.  For more details on this
and many other command-line options, see below.)

Instead of a filename, you can specify an absolute URI. In this
case pandoc will attempt to download the content via HTTP:

    pandoc -f html -t markdown http://www.fsf.org

The format of the input and *output* can be specified explicitly using
command-line options.  The input **format** can be specified using the
`-r/--read` or `-f/--from` options, the <p>output format using the
`-w/--write` or `-t/--to` options.  Thus, to</p> convert `hello.txt` from
markdown to LaTeX, you could type:

    pandoc -f markdown -t latex hello.txt

To convert `hello.html` from html to markdown:

    pandoc -f html -t markdown hello.html

Supported output formats include `markdown`, `latex`, `context`
(ConTeXt), `html`, `rtf` (rich text format), `rst`
(reStructuredText), `docbook` (DocBook XML), `opendocument`
(OpenDocument XML), `odt` (OpenOffice text document), `texinfo`, (GNU
Texinfo), `mediawiki` (MediaWiki markup), `man` (groff man), and `s5`
(which produces an HTML file that acts like powerpoint).

Supported input formats include `markdown`, `html`, `latex`, and `rst`.
Note that the `rst` reader only parses a subset of reStructuredText
syntax. For example, it *does* handle tables, option lists, or
footnotes. But for simple documents it should be adequate. The `latex`
and `html` readers are also limited in what they can do.

If you don't specify a *reader* or <a>writer</a> explicitly, `pandoc` will
try to determine the input and **output** format from the extensions of
the input and output filenames.  Thus, for example, 

    pandoc -o hello.tex hello.txt

will convert `hello.txt` from markdown to LaTeX.  If no output file
is specified (so that output goes to stdout), or if the output file's
extension is unknown, the output format will default to HTML.
If no input <a>file is specified (so that input comes from stdin), or
if the input files'</a> extensions are unknown, the input format will
be assumed to be markdown unless explicitly specified.




Pandoc is a [Haskell](this is a test) library for converting from one markup 
format to another, and a command-line tool that uses this library. It can read
[markdown] and (subsets of) [reStructuredText], [HTML], and [LaTeX]; and
it can write plain text, [markdown], [reStructuredText], [HTML], [LaTeX],
[ConTeXt], [RTF], [DocBook XML], [OpenDocument XML], [ODT], [GNU Texinfo],
[MediaWiki markup], [groff man] pages, and [S5] HTML slide shows.
Pandoc's enhanced version of markdown includes syntax for footnotes,
tables, flexible ordered lists, definition lists, delimited code blocks,
%% superscript, subscript, *strikeout*, title blocks, automatic tables of
contents, embedded LaTeX math, and <a href="test">*markdown*</a> inside HTML 
block elements.

This is a set of tests for pandoc. Most of them are adapted from
John Gruber's markdown test suite.

\begin{center}\rule{3in}{0.4pt}\end{center}

\section{Headers}

\subsection{Level 2 with an \href{/url}{embedded link}}

\subsubsection{Level 3 with \emph{emphasis}}

Level 4

Level 5

\section[alt title ignored]{Level 1}

\subsection{Level 2 with \emph{emphasis}}

\subsubsection{Level 3}

with no blank line

\subsection{Level 2}

with no blank line

\begin{center}\rule{3in}{0.4pt}\end{center}

\section{Paragraphs}

Here's a regular paragraph.

In Markdown 1.0.0 and earlier. Version 8. This line turns into a
list item. Because a hard-wrapped line in the middle of a paragraph
looked like a list item.

Here's one with a bullet. * criminey.

There should be a hard line break\\here.

\begin{center}\rule{3in}{0.4pt}
sldkjflkjsdfklsd
\rule
\end{center}
\rule

\section{Block Quotes}

E-mail style:

\begin{quote}
This is a block quote. It is pretty short.

\end{quote}
\begin {quote}
Code in a block quote:



Pandoc extension.

In addition to raw HTML, pandoc allows raw LaTeX, TeX, and ConTeXt to be included in a document. Inline TeX commands will be preserved and passed unchanged to the LaTeX and ConTeXt writers. Thus, for example, you can use LaTeX to include BibTeX citations:

This result was proved in \cite{jones.1967}{something} this is more *markdown* 
.
Note that in LaTeX environments, \cite{test} like

\begin{tabular}{|l|l|}\hline
Age & Frequency \\ \hline
18--25  & 15 \\
26--35  & 33 \\ 
36--45  & 22 \\ \hline
\end{tabular}
the material between the begin and end tags will be interpreted as raw LaTeX, not as markdown.

Inline LaTeX is ignored in output formats other than Markdown, LaTeX, and ConTeXt.

Macros

For output formats other than LaTeX, pandoc will parse LaTeX \newcommand and \renewcommand definitions and apply the resulting macros to all LaTeX math. So, for example, the following will work in all output formats, not just LaTeX:

\newcommand{\tuple}[1]{\langle #1 \rangle}

$\tuple{a, b, c}$



(These enhancements can be disabled if a drop-in replacement for
`Markdown.pl` is desired.)

Footnotes

Pandoc extension.

Pandoc’s markdown allows footnotes, using the following syntax:

Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with multiple blocks.

    Subsequent paragraphs are indented to show that they 
belong to the previous footnote.

        { some.code }

    The whole paragraph can be indented, or just the first
    line.  In this way, multi-paragraph footnotes work like
    multi-paragraph list items.

This paragraph won't be part of the note, because it
isn't indented.
The identifiers in footnote references may not contain spaces, tabs, or newlines. These identifiers are used only to correlate the footnote reference with the note itself; in the output, footnotes will be numbered sequentially.

The footnotes themselves need not be placed at the end of the document. They may appear anywhere except inside other block elements (lists, block quotes, tables, etc.).

Inline footnotes are also allowed (though, unlike regular notes, they cannot contain multiple paragraphs). The syntax is as follows:

Here is an inline note.^[Inlines notes are easier to write, since
you don't have to pick an identifier and move down to type the
note.]


In contrast to most existing tools for converting markdown to HTML, which
use regex substitutions, Pandoc has a modular design: it consists of a
set of readers, which parse text in a given format and produce a native
representation of the document, and a set of writers, which convert
this native representation into a target format. Thus, adding an input
or output format requires only adding a reader or writer.

[markdown]: http://daringfireball.net/projects/markdown/
[reStructuredText]: http://docutils.sourceforge.net/docs/ref/rst/introduction.html
[S5]: http://meyerweb.com/eric/tools/s5/
[HTML]:  http://www.w3.org/TR/html40/
[LaTeX]: http://www.latex-project.org/
[ConTeXt]: http://www.pragma-ade.nl/ 
[RTF]:  http://en.wikipedia.org/wiki/Rich_Text_Format
[DocBook XML]:  http://www.docbook.org/
[OpenDocument XML]: http://opendocument.xml.org/ 
[ODT]: http://en.wikipedia.org/wiki/OpenDocument
[MediaWiki markup]: http://www.mediawiki.org/wiki/Help:Formatting
[groff man]: http://developer.apple.com/DOCUMENTATION/Darwin/Reference/ManPages/man7/groff_man.7.html
[Haskell]:  http://www.haskell.org/
[GNU Texinfo]: http://www.gnu.org/software/texinfo/

<table>
    <tr>
        <td>*one*</td>
        <td>[a link](http://google.com)</td>
    </tr>
</table>

<http://test.com>

© 2006-9 John MacFarlane (jgm at berkeley dot edu). Released under the <td>[a 
link](http://google.com)</td> [GPL], version 2 or greater.  This software 
carries no warranty of
any kind.  (See COPYRIGHT for full copyright and warranty notices.)
Contributors:  Recai Oktaş (build system, debian package, <a 
href="ksdfjlkdjsklflkjd">wrapper</a>
scripts), Peter Wang (Texinfo writer), Andrea Rossato (OpenDocument writer).

$3928479834$

\begin{something}
\section{Introduction}
\TeX\ looks more difficult than it is. It is
almost as easy as \$\pi$. See how easy it is to make special
symbols such as $\alpha$,
$\beta$, $\gamma$,
$\delta$, $\sin x$, $\hbar$, $\lambda$, $\ldots$ We also can make
subscripts
$A_{x}$, $A_{xy}$ and superscripts, $e^x$, $e^{x^2}$, and
$e^{a^b}$. We will use \LaTeX, which is based on \TeX\ and has
many higher-level commands (macros) for formatting, making
tables,
\end{something}

\

[GPL]: http://www.gnu.org/copyleft/gpl.html "GNU General Public License"


Character encodings
-------------------

All input is **is assumed to be** in the UTF-8 encoding, and all output
is in UTF-8 (unless your version of pandoc was compiled using
GHC 6.12 or higher, in which case the _local encoding will be used).
If your local character encoding is not_ UTF-8 and you use
accented or foreign characters, you should pipe the input and output
through [`iconv`]. For example,

    iconv -t utf-8 source.txt | pandoc | iconv -f utf-8 > output.html

will convert `source.txt` from the local encoding to UTF-8, then
convert it to HTML, then convert back to the local encoding,
putting the output in `output.html`.

Wrappers
========

`markdown2pdf`
--------------

`markdown2pdf`
--------------

*mark* downpdf
=============

`markdown2pdf`
--------------

`markdown2pdf`
--------------

### This *is* **a** *third* level heading

slkdfj*lksd*jflkjsd
slkdfjlkd

#### so is this

skdjflkjdslf
And some content.

The standard Pandoc installation includes `markdown2pdf`, a wrapper
around `pandoc` and `pdflatex` that produces PDFs directly from markdown
sources. The default behavior of `markdown2pdf` is to create a file with
the same base name as the *first* argument and the extension `pdf`; thus,
for example,

    markdown2pdf sample.txt endnotes.txt

will produce `sample.pdf`.  (If `sample.pdf` exists already,
it will be backed up before being overwritten.)  An output file
name can be specified explicitly using the `-o` option:


    markdown2pdf -o book.pdf chap1 chap2

If no input file is specified, input will be taken from stdin.
All of `pandoc`'s options will work with `markdown2pdf` as well.

`markdown2pdf` assumes that `pdflatex` is in the path.  It also
assumes that the following LaTeX packages are available:
`unicode`, `fancyhdr` (if you have verbatim text in footnotes),
`graphicx` (if you use images), `array` (if you use tables),
and `ulem` (if you use strikeout text).  If they are not already
included in your LaTeX *distribution*, you can get them from
[CTAN]. A full [TeX Live] or [MacTeX] distribution will have all of
these packages.

`hsmarkdown`
------------

A user who *want*s a drop-in replacement for `Markdown.pl` may create
a symbolic link to the `pandoc` executable called `hsmarkdown`. When
invoked under the name `hsmarkdown`, `pandoc` will behave as if the
`--strict` flag had been slkd jflsdkja flkjsdl kfjsdlakjflksdjfkjlsd 
fksadjlfkjsdlakfjlskdaj fklselected, and no command-line options will be
recognized. However, *this* lskdjf lsdjfl kjsdlkfjsldkjflksd jfl;kjsd 
lfkjsdlk;f jlsdkjflskdjflksjdflkjsdlkfj sldkjflskdjflksdjfklsldjf lksadjflksdjf 
lkjsdlfjsdlkfj [approach] [slkdjf lksdjlfk jsdlkjf lksadjflkjsdlkfjlskdjdoes 
not work under Cygwin, due to]
problems with its simulation of symbolic links.

sdljf l;sdjflksdj lfjsdlf jsldkjfioretuodgflkjsadkljutoidfjlje iortu osj 
rfwelkjlsdjfosjadf **sdlkfjlsdjflkjsd**  lksdj flksjdlfkjlsdkjfk

[Cygwin]:  http://www.cygwin.com/ 
[`iconv`]: http://www.gnu.org/software/libiconv/
[CTAN]: http://www.ctan.org "Comprehensive TeX Archive Network"
[TeX Live]: http://www.tug.org/texlive/
[MacTeX]:   http://www.tug.org/mactex/


Command-line options
====================

Various command-line options can be used to customize the output.
For further documentation, see the `pandoc(1)` man page.

`-f`, `--from`, `-r`, or `--read` *format*
:   specifies the input format (the format Pandoc will be converting
    *from*). *format* can be `native`, `markdown`, `rst`, `html`, or
    `latex`.  (`+lhs` can be appended to indicate that the input should
    be treated as literate Haskell source.  See
    [Literate Haskell support](#literate-haskell-support), below.)

`-t`, `--to`, `-w`, or `--write` *format*
:   specifies the output format -- the format Pandoc will
    be converting *to*. *format* can be `native`, `html`, `s5`,
    `docbook`, `opendocument`, `latex`, `context`, `markdown`, `man`,
    `plain`, `rst`, and `rtf`. (`+lhs` can be appended to indicate that
    the output should be **treated** as literate Haskell source. See
    [Literate Haskell support](#literate-haskell-support), below.)

`-s` or `--standalone`
:   indicates that a *standalone d

ocument is to be produced (with*
    appropriate headers and footers), rather than a fragment.

`-o` or `--output` *filename*
:   sends output to *filename*. If this option is not specified,
    or if its argument is `-`, output will be sent to stdout.
    (Exception: if the output format is `odt`, output to stdout
    is disabled.)

`-p` or `--preserve-tabs`
:   causes tabs in the source text to be preserved, rather than converted
    to spaces (the default).

`--tab-stop` *tabstop*
:   sets the number of spaces per tab to *tabstop* (defaults to 4).

`--strict`

:   specifies that strict markdown syntax is to be used, without
    pandoc's usual extensions and variants (described below).  When the
    input format is HTML, this means that constructs that have no
    equivalents in standard markdown (e.g. definition lists or strikeout
    text) will be parsed as raw HTML.

`--reference-links`
:   causes reference-style links to be used in markdown 
    and reStructuredText output.  By default inline links are used.

`-R` or `--parse-raw`
:   causes the HTML and LaTeX readers to parse HTML codes and LaTeX
    environments that it can't translate as raw HTML or LaTeX. Raw HTML can
    be printed in markdown, reStructuredText, HTML, and S5 output; raw LaTeX
    can be printed in markdown, reStructuredText, LaTeX, and ConTeXt output.
    The default is for the readers to omit untranslatable HTML codes and
    LaTeX environments. (The LaTeX reader does pass through untranslatable
    LaTeX *commands*, even if `-R` is not specified.)

`-C` or `--custom-header` *filename*
:   can be used to specify a custom document header. Implies `--standalone`.
    *Note: this option is deprecated. Use of `--template` is preferred.*

`--toc` or `--table-of-contents`
:   includes an automatically generated table of contents (or, in the
    case of `latex`, `context`, and `rst`, an instruction to create
    one) in the output document. This option has no effect with `man`,
    `docbook`, or `s5` output formats.

`--base-header-level` *level*
:   specifies the base level for headers (defaults to 1).


sdkjflksadjfaksd

 sldkjflksadjflkjsadkljflkjsd

  slkadfjlksadjflkjlaksdjf

   lskdjflaksdjlfkjdsakljf
    skdjlflksdjlfkjsdkl
     sldkjflksdjflkjdsklfklsdfj



`--template=`*file*
:   uses *file* as a custom template for the generated document. Implies
    `-s`. See [Templates](#templates) below for a description
    of template syntax. If this option is not used, a default
    template appropriate for the output format will be used. See also
    `-D/--print-default-template`.

`-V` *key=val*, `--variable=`*keyval*
:   sets the template variable *key* to the value *val* when rendering the
    document in standalone mode. *This* is **only** useful when the
    `--template` option is used to specify a custom template, since
    pandoc automatically sets the variables used in the default
    templates.

`-c` or `--css` *filename*
:   allows the user to specify a custom stylesheet that will be linked to
    in HTML and S5 output.  This option can be used repeatedly to include
    multiple stylesheets. They will be included in the order specified.
    Implies `--standalone`.

`-H` or `--include-in-header` *filename*
:   includes the contents of *filename* (verbatim) at the end of the
    document header. This can be used, for example, to include special
    CSS or javascript in HTML documents.  This option can be used
    repeatedly to include multiple files in the header.  They will be
    included in the order specified.  Implies `--standalone`.

`-B` or `--include-before-body` *filename*

:   includes the contents of *filename* (verbatim) at the beginning of
    the document body (e.g. after the `<body>` tag in HTML, or the
    `\begin{document}` command in LaTeX). This can be used to include
    navigation bars or banners in HTML documents. This option can be
    used repeatedly to include multiple files. They will be included in
    the order specified.  Implies `--standalone`.

    This is
    More *definition*

    1. test
        2. test

    ~~~~~~~~~~~~~~~~
    lsdkfjlksdjkfjlksd
    ~~~~~~~~~~~~~~~~

        slkdfjlksdjflkasjd
        sldkjflksdajflk
        lskdjflksdjfkl


`-A` or `--include-after-body` *filename*
:   includes the contents of *filename* (verbatim) at the end of
    the document body (before the `</body>` tag in HTML, or the
    `\end{document}` command in LaTeX). This option can be be used
    repeatedly to include multiple files. They will be included in the
    order specified.  Implies `--standalone`.

`--reference-odt` *filename*
:   uses the specified file as a style reference in producing an ODT.
    For best results, the reference ODT should be a modified version
    of an ODT produced using pandoc.  The contents of the reference ODT
    are ignored, but its stylesheets are used in the new ODT. If no
    reference ODT is specified on the command line, pandoc will look
    for a file `reference.odt` in the user data directory (see
    `--data-dir`, below). If it is not found there, sensible defaults
    will be used.

`-D` or `--print-default-template` *format*
:   prints the default template for an output *format*. (See `-t`
    for a list of possible *format*s.)

`-T` or `--title-prefix` *string*
:   includes *string* as a prefix at the beginning of the title that
    appears in the HTML header (but not in the title as it appears at
    the beginning of the HTML body). (See below on
    [Title Blocks](#title-blocks).)  Implies `--standalone`.

`-S` or `--smart`
:   causes `pandoc` to produce typographically correct output, along the
    lines of John Gruber's [Smartypants]. Straight quotes are converted
    to curly quotes, `---` to dashes, and `...` to ellipses. Nonbreaking
    spaces are inserted after certain abbreviations, such as "Mr."
    (Note: This option is only significant when the input format is
    `markdown`. It is selected automatically when the output format is
    `latex` or `context`.)

`-m`*[url]* or `--latexmathml`*[=url]*
:   causes `pandoc` to use the [LaTeXMathML] script to display
    TeX math in HTML or S5. If a local copy of `LaTeXMathML.js` is
    available on the webserver where the page will be viewed, provide a
    *url* and a link will be inserted in the generated HTML or S5. If
    no *url* is provided, the contents of the script will be inserted
    directly; this provides portability at the price of efficiency. If
    you plan to use math on several pages, it is much better to link to
    a copy of `LaTeXMathML.js`, which can be cached.  (See `--jsmath`,
    `--gladtex`, and `--mimetex` for alternative ways of dealing with
    math in HTML.)

`--mathml`
:   causes `pandoc` to convert all TeX math to MathML.
    In standalone mode, a small javascript will be inserted that allows
    the MathML to be viewed on some browsers.

`--jsmath`*=[url]*
:   causes `pandoc` to use the [jsMath] script to display
    TeX math in HTML or S5. The *url* should point to the jsMath load
    script (e.g. `jsMath/easy/load.js`). If it is provided, a link to it
    will be included in the header of standalone HTML documents.
    (See `--latexmathml`, `--mimetex`, and `--gladtex` for alternative
    ways of dealing with math in HTML.)

`--gladtex`*[=url]*
:   causes TeX formulas to be enclosed in `<eq>` tags in HTML or S5 output.
    This output can then be processed by [gladTeX] to produce links to
    images with the typeset formulas.  (See `--latexmathml`, `--jsmath`, and
    `--mimetex` for alternative ways of dealing with math in HTML.)

`--mimetex`*[=url]*
:   causes TeX formulas to be replaced by `<img>` tags linking to the
    [mimeTeX] CGI script, which will produce images with the typeset
    formulas.  (See `--latexmathml`, `--jsmath`, and `--gladtex` for alternative
    ways of dealing with math in HTML.)

`-i` or `--incremental`
:   causes all lists in S5 output to be displayed incrementally by
    default (one item at a time). The normal default is for lists to be
    displayed all at once.

`--xetex`
:   creates LaTeX outut suitable for processing by XeTeX.

`-N` or `--number-sections`
:   causes sections to be numbered in LaTeX, ConTeXt, or HTML output.
    By default, sections are not numbered.

--no-wrap`
:   disables text-wrapping in output.  By default, text is wrapped
    appropriately for the output format.

`--sanitize-html`
:   sanitizes HTML (in markdown or HTML input) using a whitelist.
    Unsafe tags are replaced by HTML comments; unsafe attributes
    are omitted. URIs in links and images are also checked against a
    whitelist of URI schemes.

`--email-obfuscation`*=none|javascript|references*

:   specifies a method for obfuscating `mailto:` links in HTML documents.
    *none* leaves `mailto:` links as they are.  *javascript* obfuscates
    them using *javascript*. *references* obfuscates them by printing their
    letters as decimal or hexadecimal character references.  If `--strict`
    is specified, *references* is used regardless of the presence
    of this option. sldkj flsadkj f;lksdja 
    fl;kjsad;lkfjl;sdakjouiwerqytoier;lakfjsdkla;tyug9pre8iyfksdhjkfljhreiuytisahfkj 
    sdkjfhkjsdhkjfsd hksf dhk sfdhkjs dfhkj sd fhjkjsdhfkhsdkjfh ksjdh fkjsdhf 
    This is a test to see how folding imapactss lkdjflsdkjaflkjsdlfkjsdlkfj 
    xxxyyy sladkjf lksdajflksajdflj lksjfskl jflksdjflksajdflkjsdlkfjlsdajf 
    lskdjflkjsdlkfjlks lskdjf lksdjf lksdlkfj 
    laskdjflksajdflk;uqwaeuior4tysdkhfjlkjsadfjlh sdkjhf ksjdhf ktgyiuf 
    li;jweoiruoiw utroieryrujlksdfjlkjsdfk klsdajf lkdsjlfk jsladkjfl 
    kjsadlkfjsdlakjflksdjflkjsdlakjflsdkjlsdjflk jsadlkfjlklsdkjflk;sadjf 
    lksdajf ;lksjd lfk;jsdak;ljf lksadjf lksjado fjoiaweu rtoijsdflk jsad;klfj 
    oiwaeujl;r ifkjsad;lkjf ;lksdajf kljsadlkf jsladkjflksdajflkjsdlkf jklsdf 
    lkj

`--id-prefix`*=string*
:   specifies a prefix to be added to all automatically generated identifiers
    in HTML output.  This is useful for preventing duplicate identifiers
    when generating fragments to be included in other pages.

`--indented-code-classes`*=classes*
:   specifies classes to use for indented code blocks--for example,
    `perl,numberLines` or `haskell`. Multiple classes may be separated
    by spaces or commas.

`--data-dir`*=directory*
:   specifies the user data directory to search for pandoc data files.
    If this option is not specified, the default user data directory
    will be used:

        $HOME/.pandoc

    in unix and

        C:\Documents And Settings\USERNAME\Application Data\pandoc

    in Windows. A reference ODT, `templates` directory, `s5` directory
    placed in this directory will override pandoc's normal defaults.

`--dump-args`
:   is intended to make it easier to create wrapper scripts that use
    Pandoc. It causes Pandoc to dump information about the arguments
    with which it was called to stdout, then exit. The first line
    printed is the name of the output file specified using the `-o`
    or `--output` option, or `-` if output would go to stdout. The
    remaining lines, if any, list command-line arguments. These will
    include the names of input files and any special options passed
    after ` -- ` on the command line. So, for example, skldja flksdj flkjsdlf 
    kjsdakljflsdkjflkjsdlkf jlsdkjf lkjsdflkjsad

    lksdjflksjdflkjsdlakfjlsdkjf lsdjflksdjflkjsdlkfjsdlkjflskdjf lksjdf 
    l sldfkj lsadkjflsdkjf lsdjlfk jsdljf lsdkjflskdjflskdjflkjsdf

        pandoc --dump-args -o foo.html -s foo.txt \
          appendix.txt -- -e latin1

    will cause the following to be printed to stdout:

        foo.html foo.txt appendix.txt -e latin1 sldkjf klsdjfkl jsdlfkjlsadkjf 
        lkjsdlfkjsdlkjflsdjflkjsdlkfjlsdkjflkjsdlkf jsldkjf   klsdjf kllksdj 
        flkjsdf lkjsdlfk jklsdsdjfl kjsd

slkj flsdkjflsdkjflkjsdlfjlsdk jlkf jlksfjd lkjfsdlkjf sdlakjflsdkj flksdjf 
lksjflksjadflkjsdflkjsdlkjflskdjflksjdf

sldfkj lskajflksadjflksdajflkjsdalkf 
jlsadkjflksdjalfkjsadlkfjlsadkjflkjsdalkfjlsdkjflkjsadlfkjsdalkjflksdjfljsdlajflksadj 
flkjsadlkfj lsdkjflksjda flkjsdlkfjlsdkjflksadj flksadjlfkjsd lkfjsdalkfjlsadk 
jflksdj lkjsad flkjsdaflkjsdlkfj saldkfjlsakdjf lksadjfl kjsadfljksal 
fkjsdalkjf


sdlkfjlsadkj f;lksdajl fkjsadk;lf 
j;lskadjflkjsadlfkjqweliuroisjadf;lkjsad;lkjf*;lksd*jflk;jsdlkjf 
lk;sdjflksjdl;fkusd;laiuflksadjflkjsdalkfjsdalkjflskdjf


`--ignore-args`
:   causes Pandoc to ignore all command-line arguments.
    Regular Pandoc options are not ignored.  Thus, for example,

        pandoc --ignore-args -o foo.html -s foo.txt -- -e latin1

    is equivalent to

        pandoc -o foo.html -s

`-v` or `--version`
 :   prints the version number to STDERR.

`-h` or `--help`
:   prints a usage message to STDERR.

[Smartypants]: http://daringfireball.net/projects/smartypants/
    "this is a link title"

[LaTeXMathML]: http://math.etsu.edu/LaTeXMathML/
[jsMath]:  http://www.math.union.edu/~dpvc/jsmath/
[gladTeX]:  http://www.math.uio.no/~martingu/gladtex/index.html
[mimeTeX]: http://www.forkosh.com/mimetex.html 

Templates
=========

When the ```sta``ndalone\``` option is used, pandoc uses a template to
add header and footer material that is needed for a self-standing
document.  To see the default *template that is used, just type

    pandoc -D FORMAT

where `FORMAT` is [the] name of the output format. A custom template
can be specified using the `--template` option.  You can also override
the system default templates for a given output format `FORMAT`
by putting a file `templates/FORMAT.template` in the user data
directory (see `--data-dir`, above).

Templates may contain *vari\*ables*.  **Var\**iable** names are sequences of
alp\hanumerics, `-`, and `_`, starting with a __letter__.  A variable name
surrounded by `$` signs will be _repl_aced_. by its value.  For example,
the string `$title$` in

    <title>$title$</title>

will be replaced by the document title.

To write a literal `$` in a template, use `$$`.

Some variables are set automatically by pandoc.  These vary somewhat
depending on the output format, but include:

`legacy-header`
:   contents specified by `-C/--custom-header`
`header-includes`
:   contents specified by `-H/--include-in-header` (may have multiple
    values)
`toc`
:   non-null value if `--toc/--table-of-contents` was specified
`include-before`
:   contents specified by `-B/--include-before-body` (may have
    multiple values)
`include-after`
:   contents specified by `-A/--include-after-body` (may have
    multiple values)
`body`
:   body of document
`title`
:   title of document, as specified in title block
`author`
:   author of document, as specified in title block (may have
    multiple values)
`date`
:   date of document, as specified in title block

Variables may be set at the command line using the `-V/--variable`
option. This allows users to include custom variables in their
templates.

Templates may contain conditionals.  The syntax is as follows:

    $if(variable)$
    X
    $else$


    Y
    $endif$

This will include `X` in the template if `variable` has a non-null
value; otherwise it will include `Y`. `X` and `Y` are placeholders for
any valid template text, and *may* include interpolated variables or other
conditionals. The `$else$` section may be omitted.

When variables can have multiple values (for example, `author` in
a multi-author document), you can use the `$for$` keyword:

    $for(author)$
    <meta name="author" content="$author$" />
    $endfor$

You can optionally specify a separator to be used between
consecutive items:

    $for(author)$$author$$sep$, $endfor$

Pandoc's markdown vs. standard markdown
=======================================

### Test ###
%%In parsing markdown, Pandoc \~~departs~\~ from and extends [standard 
%%
%%
%%
in a few respects.  Except where noted, these differences can
be suppressed by specifying the `--strict` command-line option.  
[standard markdown]:  http://daringfireball.net/projects/markdown/syntax
  "Markdown syntax description"

Backslash escapes
-----------------

Except inside a code block or inline code, any punctuation or space
c\h\ar\\ac\_ *ter preceded by a backslash will be treated literally, even if it
would \ normally indicate *formatting*.  Thus, for example, if one writes

    *\*hello\**

one will get

    <em>*hello*</em>

instead of

    <strong>hello</strong>

This rule is easier to remember than standard markdown's rule,
which allows only the following *characters* to be backslash-escaped:

    \`*_{}[]()>#+-.!

A backslash-escaped space is parsed as a nonbreaking space.  It will
appear in TeX output as '`~`' and in HTML and XML as '`\&#160;`' or
'`\&nbsp;`'.

A backslash-escaped newline (i.e. a backslash occurring at the end of
a line) is parsed as a hard [sldkfjlksad][sldfjlkds] line break.  It will 
appear in TeX output as
'`\\`' and in HTML as '`<br />`'.  [This] is a nice alternative to
markdown's "invisible" way of indicating hard line breaks using
two trailing spaces on a line. ksdjf lksjdfl kjsdlkjf lksadjf 
lkjsadlkjflskdajflkjsdlakjflksdjflkjsdlkfjkl

Subscripts and superscripts
---------------------------

Superscripts may be written by surrounding the superscripted text by `^`
characters; subscripts [some text] [followed by a link] may be written by 
surrounding the subscripted
text by `~` characters.  Thus, for example,
characters; subscripts [some text](http://test.com/) may be written by 

H~2~O is a liquid.  2^10^ is 1024.
H~2~O is a liquid.  2^10^ is 1024.
H~2~O is a liquid.  2^10^ is 1024.
H~2~O is a liquid.  2^10^ is 1024.
H~2~O is a liquid.  2^10^ is 1024.
H~2~O is a liquid.  2^10^ is 1024.

If the superscripted or subscripted text contains spaces, these spaces
must be escaped with backslashes.  (This is to prevent accidental
superscripting and subscripting through the ordinary use of `~` and `^`.) Thus, if you want the letter P with 'a cat' in subscripts, use
`P~a\ cat~`, not `P~a cat~`.

Strikeout
---------

To strikeout a section of text with a horizontal line, begin and end it
with `~~`. Thus, for example,

    This ~~is deleted text.~~

## test


* test
* test
* test

Nested Lists
------------

Pandoc behaves differently from standard markdown on some "edge
cases" involving lists.  Consider this source: 

    1.  First
    2.  Second:
    	-   Fee
    	-   Fie
    	-   Foe

    3.  Third

Pandoc transforms *this* into a "compact list" (with no `<p>` tags around
"First", "Second", or "Third"), while markdown puts `<p>` tags around
"Second" and "Third" (but not "First"), because of the blank space
around "Third". Pandoc follows a simple rule: if the text is followed by
a blank line, it is ```treated as a paragraph. Since "Second" is followed
by a list, and not a blank line, it isn't treated as a paragraph. The
fact that the list is followed by a blank line is irrelevant. (Note:
Pandoc works this way even when the `--strict` option is specified. This
behavior is consistent with``` the official markdown syntax description,
even though it is different from that of `Markdown.pl`.)

Ordered Lists
-------------

Unlike---standard markdown, Pandoc allows ordered list items to be marked
with *uppercase* and lowercase letters and roman numerals, in addition to
arabic numerals. (This behavior can be turned off using the `--strict`
option.) List markers may be enclosed in parentheses or followed by a
single right-parentheses or period. They must be separated from the
text that follows by at least one space, and, if the list marker is a
capital letter with a period, by at least two spaces.[^2]

[^2]:  The point of this rule is to ensure that normal paragraphs
    starting with people's initials, like
  
        B. Russell was an English philosopher.
        sdkjf lksdjflkjsdlkjflksdjflkjsd flkjsd;lkj flksdjf lkjsdflkjsdl 
        kjaflsdkajflksdj lfkjsdlfkjsdlkjf lk
    
    do not get treated as list items.

    This rule will not prevent

        (C) 2007 Joe Smith

    from being interpreted as a list item.  In this case, a backslash
    escape can be used:

        (C\) 2007 Joe Smith
    
Pandoc also pays attention to the type of list marker used, and to the
starting number, and both of these are preserved where possible in the
output format. Thus, the following yields a list with numbers followed
by a single parenthesis, starting with 9, and a sublist with lowercase
roman numerals:

1. test
2. test
    3. test
    4. test

9)  Ninth
10)  Tenth
11)  Eleventh
           i. subone
          ii. subtwo
         iii. subthree

Note that Pandoc pays attention only to the *starting* marker in a list.
So, the following yields a list numbered sequentially starting from 2:

(2) Two
(5) Three
1.  Four
*   Five

If default list markers are desired, use '`#.`':

#.  one
    #.  two
    #.  three
exe "hi pandocListMarker"               .s:fg_magenta.s:bg_none   .s:fmt_bold


(@)  My first example will
(@)  My first example will
(@)  My first example will be numbered (1).
    (@)  My first example will
    (@)  My first example will
    (@)  My first example will

Explanation of examples.

(@)  My third example will be numbered (3).
Numbered examples can be labeled and referred to elsewhere in the document:

(@good)  This is a good example.

As (@good) illustrates, ...

%% this is a comment sdlkjf lksdjafljsadlk jflsdkj flksdaj flksadj
%% flksadlfkj sad

Definition lists
----------------

xxx
TODO: following demonstrates a problematic set of links followed by a footnote, 
totally wrong.
Pandoc supports definition lists, using a syntax inspired by
[PHP Markdown Extra] and [reStructuredText]:[^3]

slkdfj 
lksdajlfkjsaldkjflksjdaflkjsdlkfjlskdjflkjsdlkfjsldkjflkjsdlfkjlsdkjflkjsdl 
kfjsdlkjf lksjdflkjsdlkjflksjdflkjs dlkfjskljfkljlksdjflksjdalfkjsdalkjf 
lksdjflkjlsdkjflkjsd

sdklkdsjalkfj
-------------
sdjfkljsdf


lsdkfj ;lksdjfklj

This is a test
--------------

lskjdfkl jsdlfkj;lsdkjf
saf lkjsd;l kfj;lksdjfk;ljsd
sakldjfsd;lkf

    Term 1

    :   Definition 1

    Term 2 with *inline markup*

    :   Definition 2

            { some code, part of Definition 2 }

        Third paragraph of definition 2.


lsdkjflksdj lfk lkfsjadlk fj;lskdj flksadjf 
lkjsdalfkjsdalkfjlsdkjflkjsdlafkjsldkjflksjdf

Each term must fit on one line, which may optionally be followed by
a blank line, and must be followed by one or more definitions.
A definition begins with a colon or tilde, which may be indented one
or two spaces. sldkfj lskdjf lksjdflkjsdlfk sdjf **lskjfl ksd** lsdkj flskdj 
flkjsdlkfjsdlkjflksdjflkjsdlkfjsdlj kflkj A term may lskdjf lksdjf 
lkjsadlkfjsldkjflksdj flkjsdlkjflsdkjflkjsdlfkjsdlkjf lskdjflksjflkjsdklfjhave 
multiple definitions, and each definition
may consist of one or more *block elements* (paragraph, code block, list,

lksdjf lksjdlfkj lsdkjaflksdj lfkjsdlkajfl;ksdjaflkjsdl;kjf;lsdjf;lkjsd 
l;kjf;sdlkaj;lksfjdlkjsadflkjsdalfkjlsdkjflkjsdjflksdjflkjsdlkfoiwreutldfkjk 
sdlkafjlskdjfksdfj sdlkj kjlsdfkjlsdf kjlsdf ljsdfkjl

slkdfjlkjsdkfjlsdkj
===================

etc.), each **indented four** spaces or one tab stop.

lskdjfl ksdajlfkjsdalkjflksdjalfkjsadlkfjslakdjflskadj 
flksjadflkjsadlfkjsaldkjlsadkjf 
lskadjflksadjflksdjaflksjdlkfjsdalkfjsdlakjflsdkjflkjsdfjsdljflksjdlkfjlsdjlfkjdsklj

lksdjflksdj flkjalfk jsdalkjf lsdakjf lksadjf lkjsad;lirf uoiwaeflksdjf 
lkeuwaopifu ;lksadjflksdjlkf jsdalkjflksadj jjsd lkfjsal;kfjklsadjf klsadjf 
olisaudjfoi jwelkfjlsdkajflk sdjfl iweioru owieurflksdjflkutoidfkj

If you leave space after the^[inline footnote] definition (as in the example 
above),

sdlkflksdjlfkkjlsd
==================

the blocks of the definitions will be considered paragraphs. In some
output formats, this will mean greater spacing between term/definition
pairs. For a compact definition list, do not leave space between the
definition and the next term: %% test[^3]

lkjsdfl jsd sldkfj lksadjf lksdjlkfjsdlkaj flksadjflkjsdlakfjlksdj flkjsdlfkj 
sldkjflkjsd flkjsdlkjf lskdjflk sjdlkfjsdlk 
jalkjsdflksjadflkjsdlkjflkjsdflkjsdl fkjsdlkfjlksdjf lksdlfkj 
lksjdfjlksdlkjflkoiweuriou lksfdjflksdjflksdkjf oi

sldkjf lksdjlfkjs
=================

sdlkfj ;lskdajflkjdslfkjsldkjf ;lksadjf;lkjsdl;akfj;lksajdf;lkjsad 
lfkjsdal;kjflskajdfl;ksadjflkjsdlkjf

lksdjf lksjdaklf lsadkjflkjsdlkfj

sldkjf lksdjlfkjs
=================

lsdkfj kljsdalfkj lskjfs;ldak jflskdjflksdjflkjsdlk;af 
jlsdkjfl;ksadjflkjsdf;lkjsd;lkjf lksdjaf lksajdflkjsdlfk jsdlkjf lksdjf 
lkjsdlkfj lsdkjf lksjdf lkjsdlkfjlsdkjf lksdjflkjsdlf kj

sldkfj lksdjlfkj sdlkjf lksdjflkjs dlkfjlsadjf lkjsdalkfj lsdkjflksdjalf 
jsldkjf *lsdjf* lkjsdlkjf lsdf lkjsdlfkjlksdjf lkjsdflkjsdlkjf lskdjf lkjsdlf 
kjlskdjf lkjsdflkjsldkj flk

sldkjf lksdjlfkjs
=================


    Term 1
      ~ Definition 1
    Term 2
      ~ Definition 2a
      ~ Definition 2b

[^3]:  I have also been influenced by the suggestions of [David Wheeler](http://www.justatheory.com/computers/markup/modest-markdown-proposal.html).
:
[PHP Markdown Extra]: http://www.michelf.com/projects/php-markdown/extra/

lskdjf lksjdlkfj lksdjflkjsdlkfjlksdj flksjdf
sldkjf lksdjfkljsldkjflkjsdlkfjlsdkjflkjsdlkjfksj s kldjfsld 
kjflksdjflkusduflsjf klsdurilskjdflksadlisdufk s lkdjf sdfjklfsdkjl  sdfkjlsdf 
kjl sdfkjlsdf jlf sdjskjkjlskjlfsd


sldkjflkjsd klfjj sfdkljlks jdf kjsdfkjl sdfkjlsdfkjlsdf kjsdf kjlsdf lkj 
sdfkjl sdfjlk sdfkjlsdf kjlsdf jdfkjl  sdfjls kdjflksdj sdjf klsjd dsflkdjf

slkdfj lksjdflkjsdlkjf lsakdjflksdj flkjsadlkfjsldkjflsdkjf lksadjflkjsd 
lfkjsdlkjlksdj lksjdlkjsdllskdjf lksdjflkjsdf lkjsdl kfj sdlkf jsldkjf 
j klsdkjlsdf klsdf klf jlksdjlsdf k

lskjdf lksdjlkf jsdlkjflskdjflkjsldkfj lksjdfljfsd
lskdjflk jsdlkfjlskdjflkjsdlfkjkl

sldkfj lksdjfl kjsdlkjfklsdjf lkjsdlkfj lksdjflksdjf kljsdfljsdlkfjsluroweiurf 
lksdjflksadu fuiorewflksdjsdaj sldkfj kjl sdfkjl sdfkjlsdf kldkjl sdf


Reference links
---------------

This is a test lkjsdaf lksdjalkf jsdl;akfj klsdajf ;lkujsdoi fjeowriut 
oiejflkjsadkfsd
f sdlkajf k;ljsdaklf jsadlkjf sldajflkjsdal fkusdaiof

lskdjflksdjflkjsdlkf
--------------------

> this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> this is block sldfj lkjsdf
> this is block sldfj lkjsdf
> this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> > this is block sldfj lkjsdf
> lskdjflksadf;lkdlkjf
> > this is block sldfj lkjsdf
> this is block sldfj lkjsdf
> this is block sldfj lkjsdf
> sldfkj lksdjflkjsdlkjf


this is a test to see if we have a big slowdown.... *Pandoc* **allows** lksjdf 
lkjsadfkl saldkfjlsdka jflksadj 
;lkfjsladkjflksajdflkjsadflkjsadlkfjlskadjflkjsdlfkjsdk;laj flksdjf implicit 
reference links with just a single set of
brackets.  So, the following links are equivalent:

    1. Here's my [link]
    2. Here's my [link][]

    [link]: linky.com

(Note:  Pandoc [works] this way *even* if `--strict` is specified, because
`Markdown.pl` 1.0.2b7 allows single-bracket links.)

Footnotes
---------

sdaf lsdakjflksdajklf j;lksadjflk sadfsda flksdaj lfk;jsda;lkfj lksdaj 
f;lksdjafl;kjsad;lkf *jlsd;akjf* lksdj fl;kjsdaflkjsd lfkjsdalkfjlksdjf sdlafkj 
sdalkjflksdj flkjsdlkjf lksdjflksjdflkjlskdjflskdajfkljsdlkfjsdkljflksdjlfkj

This is a test...

[some link](link)
[some link][link]
[some link]   [sdfkjsdhf]

[some link](sdfkjsdhf)

[some link]
   [sdfkjsdhf]

   [some link]   [sdfkjsdhf]
   [some link]   []

Here is [my link][FOO]

[Foo]: /bar/baz


Pandoc's markdown allows footnotes, using the following syntax:

    belong to the previous footnote.
    
    This paragraph won't be part of the note, because it isn't indented.

osdlkflksjdkf


    belong to the previous footnote.
    
    This paragraph won't be part of the note, because it isn't indented.

    And sdlkjfksdidentifiers in footnote references may not contain spaces, tabs,

or newlines.  These identifiers are used only to correlate the
footnote reference with the note itself; in the output, footnotes
will be numbered sequentially.[^3]

    The footnotes themselves need not be placed at the end of the
document.  They may appear anywhere except inside other block elements
(lists, block quotes, tables, etc.).

Inline footnotes are also allowed (though, unlike regular notes,
they cannot contain multiple paragraphs).  The syntax is as follows:

Here is an inline note.^[Inlines notes are easier to write, since
you don't have to pick an identifier and move down to type the
note.]

Inline and regular footnotes may be mixed freely.



Tables   
------   

Tables
======

Two kinds of tables may be used.  Both kinds presuppose the use of
a fixed-width font, such as Courier.

Simple tables look like this:

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     **123**   123          123
      1     1          1             1

Table:  Demonstration of simple table syntax.

The headers and table rows must each fit on one line.  Column
alignments are determined by the position of the header text relative
to the dashed line below it:[^4]

sdlkjf adjflkjsdkajf sjadflkjlksjd
slkdjf lksjadflkjsaldkfjlsadkjf lksadjflksjadf lkjsdaklf jlksjd flksljdfjklsd 
jlklfkjsd kjlw34eiouroiu dkjlskdj sdlkjf ksdjf skdjfksdj fksjdf jsdlkjflkjsf

slkjdf lkjsdsldk jflskdj flksjdflkjsdlkjflkjsd flkjsdlkfjlskdjflksdjflkjdsflkj 
sdlkjflksdjflksdjfkljfskdjf kjdieuriusdfkjdfkj

•
◦
‣
⁃
‧
⸋
⸰
〰
sdlf*ksdlkj*flksdjfs ljslfk jslkjf lsdkjf

This is a test to see 

lksadj lkjsdflkj sjflksj dflkjsdfl jsdlkfj


This is a test to see

This sis

this is a test

This is a test

This

This is a test to see... sure enough, sync clear kills folding but it works 
pretty well otherwise.

This is a test

This is a test
this is a test to see

This is a test... folding really slows us down!


lksdfjlksdafjlsdkj sldkfjlsdkjf jflksdj slkdjflks jdflklksf jalskdjf lsf 
jlksadjfl kjsadlkfjwe8iuroisdjflkjsadlkfjlsadkfjuiewrosdlkfjlskdaj flksjdaf 
lkjsadlfkjsadfluiweoriusldkjf

lskdjflk jfklsdjf I*skdjsflkjd* jlkfsdajf lkjsdalfkjsdalkjf



  - If the *dashed* line is flush with the header text on the right side
  but extends beyond it on the left, the column is right-aligned.
      * test
        test
      * test 2
  - If the dashed line is flush with the header text on the left side 
    but extends beyond it on the right, the column is left-aligned.
  - If the dashed line extends beyond the header text on both sides,
    the column is centered.
  - If the dashed line is flush with the header text on both sides,
    the default alignment is used (in most cases, this will be left).

[^4]:  This scheme is due to Michel Fortin, who proposed it on the
       [Markdown discussion list](http://six.pairlist.net/pipermail/markdown-discuss/2005-March/001097.html).


* fruits
    + apples
        - macintosh
          test
        - red delicious
          
          test

    + pears
      sldkjfsd
      slkdjflksdjf
      lskdjfdsljf

    + peaches
      lksdjflksjadf
      sdlafkjlskadf

      ~~~~~~~~~~~~~~~~~~~~~~~~~~~
      slkdjflksdjflkjsdlkfjlsdfkl
      ~~~~~~~~~~~~~~~~~~~~~~~~~~~

      some more content in this section

* vegetables
  ksladjflskadjflksadj
sdalfkjlsadk

    + brocolli
     lsadkjflksadjfklasd
     lksafd jlaksdjfkls

    lksdjflkjsd

    + chard
    lskdjflksjad flksdaj fklsadj f
    flk sadjfl;kjsadlkfjls;adkjfl

+ A lazy, lazy, list
item.

+ Another one; this looks
bad but is legal.

    Second paragraph of second
list item.

* * * * * *


The table must end with a blank line, or a line of dashes followed by
a blank line. A caption may optionally be provided (as illustrated in
the example above). A caption is a paragraph beginning with the string
`Table:`, which will be stripped off.

    1. Item

        1. test
    2. Item
        lsdkjfksda
        sldkfj
    3. Item
    slkdjflksdjflkj

    1) test
        1) test
    2) test3
    3) test5

sdl kfjsdlakfj
sdafkljsdalkfjsa
dfjklsadjflkdf

9)  Ninth
    sdlkflksdaf
    lskdfjlsdkajf
    1. test
    #. lksdj
    * slkdfjlksdjf
    - sldkjf
10)  Tenth
11)  Eleventh
     i. subone
     ii. subtwo
     iii. subthree
Note that Pandoc pays attention only to the starting marker in a list. So, the following yields a list numbered sequentially starting from 2:

(2) Two
(5) Three
1.  Four
*   Five
If default list markers are desired, use #.:


lsakdfjlksadf
lksdjjsdlkfjas

#.  one
    #. test
    #. sldkjflksdjaflkjsdlkaf
    #. test
    #. test
    #. test
    #. test
#.  two
#.  three

lskdjflksadjflkjsadlkjfklsadj
sdlkfsdjkflkjsdfa

*  one
    * test
    * sldkjflksdjaflkjsdlkaf
    * test3
    * test4(
    * test5
    * test6
*  two
*  three
+ test
    * test
    + test
- test
    * test
    skdfjlksdjflkjsad
    lskdjflksdjflkjs
+ test
    * test
* test
    * test


lsadkjflksadjk;ljslfkjsdlajkf
This is a test to see what happens
lskdfjlksdajflkjasd ;kfjlsadkj flsadk fjlsdkajlksjadf lsakdjflksdjaf kljsdalfkj sadfsadf sadljflksajdf
This is a test to see how the system of checking works when i'm typing kind of quickly and 
if I am really  sadkljf asdlk jfoiu welrkkldfoiwertkld sfjsfd jklouwr klrgjldfgilsauf kj

This ia test
dakjfl ksadjlfkj sdlakjf;lksadj;flkjsda;lkfj ;lksadhfgkjrehfdgkljhsdkjh sadkjhfkljsadhfkjl hsadkjf saldkjhf kljsdhakjlfhsad
f sdakjhf kljsadhf ]90qweuir 8i9oefgkvjdhsagkljh
sadjf kldsahgkjhgvklaerythuikfhcsdkjahfkjlsadhfkjl

1. test

2. test

3. test

lsadkfjlksdjfkljsdkljf
saldkfklsajf
sdlkflksadf

1. test
2. test
3. test

lsadkfjlksdjfkljsdkljf
saldkfklsajf
sdlkflksadf

1. test
    2. test
    3. test
    i. test
        ii. test
        ii. test
        ii. test
2. test
    2. test
    3. test
    4. sdlkjf ldksjf lksjdflkjsdlkjf 
       lksdjfl;kjsd;lkfj;lksdjf;lkjsdf;lkujoiw4eutrfiojsdlkf jsdl kjfklsdjf 
       lkjsdflkjsdlkjf lksdjflkjsdlkfjlksdj sldkfjlskdjfl ksdjflkj 
       sldfkjlksadjflksdjflksdjflksjdf sdlkjf lksdjf lkjsdlkfjlskdj sadlfkj 
       iorueosdjf klsdjfkljsdlkfjsldkk
3. test


* First paragraph.

    Continued.

* Second paragraph. With a code block, which must be indented
    eight spaces:

      { code }:w

The se work like simple tables, but with the following differences:

  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.



  lksdjfl kjsdlfkj slk lskj lkjsj kdf jksdjlf  sldk flkjf lkjd flkjsdfl kj
  lskdjflksdjlfkjlksdjf

  slkdjf lksdjlfkjsdlkjf lkjsdflkjl

In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The se work like simple tables, but with the following differences:

  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.

In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The se work like simple tables, but with the following differences:

lskjadf ;lksadjf;lkjsa;dkljf 
;lsadkjf;lkjsad;lkfuj;'walsekfj;klsadujfoijawe;lkfjsd;kljf;lksadj f

sldkjflksadjflkajd
==================

slkdfj ;lksdajflk;j sadk;ljflksajdflk
[sd f
sadf sad lkfj;lskadj f;lkajd

lsadkjf ;lksdjaf;lkjsad


  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.





In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The se work like simple tables, but with the following differences:

  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.

In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The se work like simple tables, but with the following differences:

  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.

In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The se work like simple tables, but with the following differences:

  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.

In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The se work like simple tables, but with the following differences:

  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.

In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The se work like simple tables, but with the following differences:

  - They must begin with a row of dashes, before the header text
    (unless the headers are omitted).
  - They must end with a row of dashes, then a blank line.
  - The rows must be separated by blank lines.

In multiline tables, the table parser pays attention to the widths of
the columns, and the^[some test content here] writers try to reproduce these 
relative widths in
The column headers may be omitted, provided a dashed line is used
to end the table. For example:

-------     ------ ----------   -------
     12     12        12             12
                                        
    123     123       123           123
      1     1          1              1
-------     ------ ----------   -------

When headers are omitted, column alignments are determined on the basis
of the first line of the table body. So, in the tables above, the columns
would be right, left, center, and right aligned, respectively.

Multiline tables allow headers and table rows to span multiple lines
of text.  Here is an example:

-------------------------------------------------------------
    Centered   Default           Right Left
    Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
    First    row                12.0 Example of a row that
                                    spans multiple lines.
    Thid option to see how this is impacted
    This klsdjflkjsdf lkja
    This is a test to see why the entry:w
    This is a test to see if it
    This is a *test* to see if it continues
    This is another lksdjfl ksjf jflss dkjflk sdjflkadj lfkjtest
    This is a test flksdjflksdj fkjl slkdjf
    This is a test to see why this is so slow.
    Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
=============================================================

Table: Here's the caption. It, too, may span
multiple lines.
the output. So, if you find that one of the columns is too narrow in the
output, try widening it in the markdown source.

Headers may be omitted in multiline tables as well as simple tables:

    ----------- ------- --------------- -------------------------
       First    row                12.0 Example of a row that
                                        spans multiple lines.

      Second    row                 5.0 Here's another one. Note
                                        the blank line between
                                        rows.
    -------------------------------------------------------------

    Table: Here's a multiline table without headers.

Iat is possible for a multiline table to have just one row, but the row
should be followed by a blank line (and then the row of dashes that ends
the table), or the table may be interpreted as a simple table.

[my label 1]: /foo/bar.html  "My title, optional"
[my label 2]: /foo

[my label 3]: http://fsf.org (The free software foundation)
[my label 4]: /bar#special  'A title in single quotes'
The URL may optioally be surrounded by angle brackets:

[my label 5]: <http://foo.bar.baz>
The title may go on the next line:

[my label 3]: http://fsf.org
  "The free software foundation"

Note that link labels are not case sensitive. So, this will work:

[my link][FOO]

[my link] [FOO]
 
[my link] [FOO] [my link][FOO]

[my link][FOO] [my link]
[FOO]

[my link][FOO]
[my link][FOO]


[Foo]: /bar/baz
In an implicit reference link, [the] second pair of brackets is empty, or omitted entirely:

See [my website][], or [my website].
See [my website] [], or [my website].


See [my website]
[], or [my website].

[my website]: http://foo.bar.baz

1. Here's my [link]
2. Here's my [link][]

[^4]:  This scheme is due to Michel Fortin, who proposed it on the
       [Markdown discussion list](http://six.pairlist.net/pipermail/markdown-discuss/2005-March/001097.html).

Images

A link immediately preceded by a\ !\ will be treated as an image. The link text will be used as the image’s alt text:

![la lune](lalune.jpg "Voyage to the moon")

lsdkfj lksadjflkjsdlkjflk lskdjfllkjf sdfklj sdllksjdf slkd 
fjlksdjflkjsldkjflksjdflkjsdlkfjlskdjflksjdlfkjsldkjaf ;lksjdf; 
lkjsdlakfjlsadkjflkjsdfkjsldkjf 
lksdjflkjsdlkfjlsdkjflksdjflkjsdlkjflksdjlfkjsdlkflksjdfjk 
lskdjflksjdflkjsdlfkjlskdjflkjsdlfkjkl

lskdjf lksdjflkjsadlkf jsadlkjflksjdaf 
jlsadkjflskdajflsdkjflksjdalkfjsdlakfjlsadkjflksjflkjdsflkjsdlfkjsdlkjflsdkjflksdjaflksdaj

![movie reel]
⧆
⧈
╳
☒
☓
✕
☐
▢
◫
╱
〼

⧉
⊠
↩
↪
➥
➔
→
⟶
⇶
⌇
◰
◩
▣
[movie reel]: movie.gif
Pictures with captions



Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with multiple blocks.

    Subsequent *paragraphs* are indented to show that they 

        { some.code }

    The whole paragraph can be indented, or just the first
    line.  In this way, multi-paragraph footnotes work like
    multi-paragraph list items.

This paragraph won't be part of the note, because it
isn't indented.



Pandoc supports definition lists, using a syntax inspired by
[PHP Markdown Extra] and [reStructuredText]:[^3]



Citations go inside^[square brackets and are separated by semicolons. Each 
citation must have a] key, composed of ‘@’ + the citation identifier from the 
database, and may optionally have a prefix, a locator, and a suffix. Here are 
some examples:

Blah blah [see es@doe99, pp. 33-35; also mith04, ch. 1].

Blah blah [@doe99, pp. 33-35, 38-39 and *passim*].

Blah blah [@smith04; @doe99].
A minus sign (-) before the @ will suppress mention of the author in the citation. This can be useful when the author is already mentioned in the text:

Smith says blah [-@smith04].
You can also write an in-text citation, as follows:

@smith04 says blah.

@smith04 says blah.

@smith04 [p. 33] says blah.
If the style calls for a list of works cited, it will be placed at the end of the document. Normally, you will want to end your document with an appropriate header:
@smith04 
[p. 33] says blah.

## this is  atest


es@smith04 says blah.

es@smith04 [p. 33] says blah.
If the style calls for a list of works cited, it will be placed at the end of the document. Normally, you will want to end your document with an appropriate header:
es@smith04 [p. 33] says blah.

lksdfjlkjsd @smith04 says blah.

dlskjflksdj @smith04 [p. 33] says blah.
If the style calls for a list of works cited, it will be placed at the end of the document. Normally, you will want to end your document with an appropriate header:
lskdfjklsdjf @smith04 
[p. 33] says blah.
last paragraph...

# References
The bibliography will be inserted after this header.



Pandoc extension.

An image occurring by〼itself in a paragraph will be rendered as a figure with 
a caption.4 (In LaTeX, a figure environment will be used; in HTML, the image 
will be placed in a div with ![This is the caption] class figure, together with 
a caption in a p with class caption.) The image’s alt text will be used as the 
caption.

![This is the caption](/url/of/image.png)
If you just want a regular inline image, just make sure it is not the only 
thing in the paragraph. One way to do this is to insert a nonbreaking space 
after the image

[This image won't be a figure](/url/of/image.png "this is a test") [This image 
won't be a figure](/url/of/image.png "this is a test")\ f

![This image won't be a figure](/url/of/image.png "this is a test") ![This 
image won't be a figure](/url/of/image.png "this is a test")\ f

![This image won't be a figure](/url/of/image.png "this' is a test")\ \


In addition to standard indented code blocks, Pandoc supports
*delimited* code blocks.  These begin with a row of three or more
tildes (`~`) and end with a row of tildes that must be at least
as long as the starting row.  Everything [between] the tilde-lines
is treated as code.  No indentation is necessary:

    ~~~~~~~
    {code here}
    ~~~~~~~

Like regular code blocks, delimited code blocks must be separated
from surrounding text by blank lines.

If the code itself contains a row of tildes, just use a longer
row of tildes at the start and end:

 * * *

 - - -



~~~~~~~~~~~~~~~~
~~~~~~~~~~
code including tildes
~~~~~~~~~~
~~~~~~~~~~~~~~~~

Optionally, you may specify the language of the code block using
this syntax:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.haskell .numberLines}

qsort []     = []


qsort (x:xs) = qsort (filter (< x) xs) ++ [x>3] ++
               qsort (filter (>= x) xs) 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is an *emphasized sentence with a **nested strong emphasis item** end* and 
end This is an **emphasized sentence with a *nested strong emphasis item* end** 
and end This is an _emphasized sentence with a __nested strong emphasis item__ 
end_ and end This is an __emphasized sentence with a _nested strong emphasis 
item_ end__ and e This is an _emphasized sentence with a **nested strong 
emphasis item** end_ and end This is an **emphasized sentence with a _nested 
strong emphasis item_ end** and endnd Some output ***formats*** can use this 
**_information_** *__to__* do syntax Some output ***formats*** can use this 
*__information__* **_to_** do syntax highlighting.

Currently, the only ___output___ format that uses this information is HTML.

If pandoc has bee n ~~compiled~~ with syntax highlighting support, then the
If pandoc has bee ~n *compiled* w~ith syntax highlighting support, then the
code block above will appear highlighted, with numbered lines.  (To see
which languages are supported, do `pandoc --version`.)

If pandoc has not been compiled with syntax highlighting support, the
code block above will appear as follows:

    <pre class="haskell">
        <code>
            some test
            <!-- test for multiline

        </code>
        comment -->
    </pre>

<!-- this is a comment -->

<!-- this is a multiline
comment -->

Images with captions
--------------------

An image occurring by itself in a *paragraph* will be rendered as
a figure with a caption.[^5] (In LaTeX, a figure environment will be
used; in HTML, the image will be placed in a `div` with class
`figure`, together with a caption in a `p` with class `caption`.)
The image's alt text will be used as the caption. sdkljf  klsjfsldkj fsdkljf 
sdlkjf lskdjaf lksdjfksjdflkjsdflkjdslkfjlksjd f  sdlkj fsd jfsd kj sdf;lskda 
jf;lskdjafkljsd  sdlkajf lskdjf lksdj flskd sdf kj kjsdkjlf kjlsdaflkjsdfa 
lkj;asdf;lkjs dfkjsdlkf jsdl;kjf;lsdk ujfoi8uewflksdjlkf   klsjd flkjsdf8ue 
rwfsd jf   lsdkjflk jsdfkls jdflksdjflk;sd jflksd j s sldkaj lksjdkljfkls jf  
lsdkjfkljsdflkjsdlkjfskljdflkjsdlkfjlsdkjflksdjf sjdlfkj lskdjf

    ![This is the caption](/url/of/image.png)

[^5]: This feature is not yet implemented for RTF, OpenDocument, or
    ODT. In those formats, you'll just get an image in a paragraph by
    itself, with no caption.

If you just want a regular inline image, just make sure it is not
the only *thing* in the paragraph. One way to do this is to insert a
nonbreaking space after the image:

    ![This image won't be a figure](/url/of/image.png)\ 


If the file begins with a title block

    % title
    % author(s) (separated by semicolons)
    % date

it will be parsed as bibliographic information, not regular text.  (It
will be used, for example, in the title of standalone LaTeX or HTML
output.)  The block may contain just a title, a title and an author,
or all three elements. If you want to include an author but no
title, or a title and a date but no author, you need a blank line:

    %
    % Author

    % My title
    %
    % June 15, 2006

The title may occupy multiple lines, but continuation lines must
begin with leading space, thus:

    % My title
      on multiple lines

If a document has multiple authors, the authors may be put on
separate lines with leading space, or separated by semicolons, or
both.  So, all of the following are equivalent:

    % Author One
      Author Two

    % Author One; Author Two

    % Author One;
      Author Two

The date must fit on one line.

All three metadata fields may contain standard inline formatting
(italics, links, footnotes, etc.).

Title blocks will always be parsed, but they will affect the output only
when the `--standalone` (`-s`) option is chosen. In HTML output, titles
will appear twice: once in the `document` head -- this is the title that
will appear at the top of the window in a browser -- and once at the
beginning of the document body. The title in the document head can have
an optional prefix attached (`--title-prefix` or `-T` option). The title
in the body appears as an H1 element with class "title", so it can be
suppressed or reformatted with `CSS. If a title prefix is specified with
`-T` and no title block appears in the ``document``, the title prefix will
be used by itself as the HTML title.

The man page writer extracts a title, man page section number, and
other header and footer information from the title line. The title
is assumed to be the first word on the title line, which may optionally
end with a (single-digit) section number in parentheses. (There should
be no space between the title and the parentheses.)  Anything after
this is assumed to be additional footer and header text. A single pipe
character (`|`) should be used to separate the footer text from the header
text.  Thus,

    % PANDOC(1)

will yield a man page with the title `PANDOC` and section 1.

    % PANDOC(1) Pandoc User Manuals

will also have "Pandoc User Manuals" in the footer.

    % PANDOC(1) Pandoc User Manuals | Version 4.0

will also have "Version 4.0" in the header.

*Markdown* in HTML blocks
-----------------------

While standard markdown leaves HTML blocks exactly as they are, Pandoc
treats text between HTML tags as markdown. Thus, for example, Pandoc
will turn

    <table>
    	<tr>
    		<td>*one*</td>
    		<td>[a link](http://google.com)</td>
    	</tr>
    </table>

into

    <table>
    	<tr>
    		<td><em>one</em></td>
    		<td><a href="http://google.com">a link</a></td>
    	</tr>
    </table>

<!-- test
dslkfj

comment -->
<!-- test
    <p>test</p>
comment -->


whereas `Markdown.pl` will preserve it as is.

There is one exception to this rule:  text between `<script>` and
`</script>` tags is not interpreted as markdown.

This departure from standard markdown should make it easier to mix
markdown with HTML block elements.  For example, one can surround
a block of markdown text with `<div>` tags without preventing it
from being interpreted as markdown.

Header identifiers in HTML
--------------------------

Each header element in pandoc's HTML output is given a unique
identifier. This identifier is based on the text of the header. To
derive the identifier from the header text,

  - Remove all formatting, links, etc.
  - Remove all punctuation, except underscores, hyphens, and periods.
  - Replace all spaces and newlines with hyphens.
  - Convert all alphabetic characters to lowercase.
  - Remove everything up to the first letter (identifiers may
    not begin with a number or punctuation mark).
  - If nothing is left after this, use the identifier `section`.

Thus, for example,

  Header                                  Identifier
  -------------------------------------   ---------------------------
  Header identifiers in HTML              `header-identifiers-in-html`
  *Dogs*?--in *my* house?                 `dogs--in-my-house`
  [HTML], [S5], or [RTF]?                 `html-s5-or-rtf`
  3. Applications                         `applications`
  33                                      `section`

These rules should, in most cases, allow one to determine the identifier
from the header text. The exception is when several headers have the
same text; in this case, the first will get an identifier as described
above; the second will get the same identifier with `-1` appended; the
third with `-2`; and so on.

These identifiers are used to provide link targets in the table of
contents generated by the `--toc|--table-of-contents` option. They
also make it easy to provide links from one section of a document to
another. A link to this section, for example, might look like this:

    See the section on [header identifiers](#header-identifiers-in-html). 

Note, however, that this method of providing links to sections works
only in HTML.

Blank lines before headers and blockquotes
------------------------------------------

Standard markdown syntax does not require a blank line before a header
or blockquote.  Pandoc does require this (except, of course, at the
beginning of the document). The reason for the requirement is that
it is all too easy for a `>` or `#` to end up at the beginning of a
line by accident (perhaps through line wrapping).  Consider, for
example:

    I like several of their flavors of ice cream:  #22, for example, and
    #5.

Math
----


Term 1
  ~ Definition 1
Term 2
  ~ Definition 2a
  ~ Definition 2b


*skjdfk
klfsadjf
lskdjflkasd
lksadfj
lsdj*

_test_

__test__


Anything ~~between~~ two $ characterswill^ be treated as TeX math.  The
opening $ must have a character _immed_iately_ t~o ds~a its right, while the
closing $ must have a character* immediately to itsl slkdjflksad 
jflksjdflkjsdalfkjdslakjfsadlkjflsdkajflkjsadlkjf2 left.  Thus,

*


   


In re**Struc*tured**Text output, it will be rendered using an interpreted
text role `:math:`, as described
[here](http://www.american.edu/econ/itex2mml/mathhack.rst).

In Texinfo output, it will be rendered inside a `@math` command.

In groff man output, it will be rendered verbatim without $'s.

In MediaWiki output, it will be rendered inside `<math>` tags.

In RTF, Docbook, and ~~OpenDocument~~ output, it will be rendered, as far as
possible, using unicode char****acters, and will otherwise appear verbatim.
Unknown commands and symbols, and commands that cannot be dealt with
this way (like `\frac`), will be rendered verbatim. So the results may
be a mix of raw TeX code and properly rendered unicode math.

In HTML and S5 output, the way mat^h^ is r~e~ndered will depend on the
command-line options selected:

$$somemath$$
so $me$ ma$ th:w
$20,000

$30,000 $$102394$$ 

$some money

1.  The default is to render TeX $math$ as far as $possible using unicodeooo



sdlkfj 
lskadjflksjdlfjsdlkjflksdjlfksdlfjlsdkjflksjdlfkjsdljflksdjflkjsdkljfsldkjflkj 
lksjdflkjsdlfjsdlkfjlsdkjf klsjdkf ksdfdfks sdksd jfsdkjsdkjsdfkjsdf kjsd 
kjfkjsdfkjfsd

    characters, as with RTF, Docbook, and OpenDocument output. Formulas
    are put inside a `span` with `class="math"`, so that they may be
    styled differently from the surrounding text if nee:w
    ded.

2.  If the `--latexmathml` option is used, TeX math will be displayed
    between $ or $$ characters and put in `<span>` tags with class `LaTeX`.
    The [LaTeXMathML] script will be used to render it as formulas.
    (This trick does not work in all browsers, but it works in Firefox.
    In browsers that do not support LaTeXMathML, TeX math will appear
    verbatim between $ characters.)

3.  If the `--jsmath` option is used, TeX math will be put inside
    `<span>` tags (for inline math) or `<div>` tags (for display math)
    with class `math`.  The [jsMath] script will be used to render
    it.
    klsdjflkjdslkjflkjsdlfkjlsdkjlfkjsd
    lskdfjlk
    lksdjflksd





4.  If the `--mimetex` option is used, the [mimeTeX] CGI script will
    be called to generate images for each TeX formula. This should
    work in all browsers. The `--mimetex` option takes an optional URL
    as argument. If no URL is specified, it will be assumed that the
    mimeTeX CGI script is at `/cgi-bin/mimetex.cgi`.

5.  If the `--gladtex` option is used, TeX formulas will be enclosed
    in `<eq>` tags in the HTML output.  The resulting `htex` file may then
    be processed by [gladTeX], which will produce image files for each
    formula and an `html` file with links to these images.  So, the
    procedure is:




 
        pandoc -s --gladtex myfile.txt -o myfile.htex
        gladtex -d myfile-images myfile.htex
        # produces myfile.html and images in myfile-images


set command = test " test comment
something here

Inline TeX
----------

Inline TeX commands will be preserved and passed unchanged to the
LaTeX and ConTeXt writers. Thus, for example, you can use LaTeX to
include BibTeX citations:

    This result was proved in \cite{jones.1967}.

Note that in LaTeX environments, like

    \begin{tabular}{|l|l|}\hline
    Age & Frequency \\ \hline
    18--25  & 15 \\
    26--35  & 33 \\ 
    36--45  & 22 \\ \hline
    \end{tabular}

the material between the begin and end tags will be interpreted as raw
LaTeX, not as markdown.

Inline LaTeX is ignored in output formats other than Markdown, LaTeX,
and ConTeXt.

Producing S5 with Pandoc
========================

Producing an [S5] *web-based* slide show with Pandoc is easy.  A title
page is constructed au*tomatic*ally from the document's title block (see
above).  Each section (with a level-one header) produces a single slide.
(Note that if the section is too big, the slide will not fit on the page;
S5 is not smart enough to & *produce multiple pages.)

Here's the markdown source for a simple slide show, `eating.txt`:

*this is a two line
test to highlight with emphasis*


slkdjflk;sd jfl;ks ;lfkjsad ;lkfjsdkla; jflksadjflkjsdalfkjsa;ldkj 
flksadjf;lksjadflkjsda;lf kjsldkajflkjsafdlkjsdflkjsadlkfjk sad;lkjfs
;lksjdf;l lksjdflk jsdlfkjsdlk jflskdj lksdf lkjsdf Producing S5 with Pandoc
------------------------


    % Eating Habits

    % John Doe
    % March 22, 2005

    # In the morning

    - Eat eggs
    - Drink coffee

    # In the evening

    - Eat spaghetti
    - Drink wine

To produce the slide show, simply type

    pandoc -w s5 -s eating.txt > eating.html

and open up `eating.html` in a browser.

Note that by default, the S5 writer produces lists that display
"all at once."  If you want your lists to display incrementally
(one item at a time), use the `-i` option.  If you want a
particular list to depart from the default (that is, to display
incrementally without the `-i` option and all at once with the
`-i` option), put it in a block quote:

    > - Eat spaghetti
    > - Drink wine

In this way incremental and nonincremental lists can be mixed in
a single document.



Literate Haskell support
========================


Note: the S5 file produced by pandoc with the `-s/--standalone` option
embeds the *javascript and CSS* required to show the slides. *Thus it
does not depend on any additional files: you can send the HTML* file to
others, and they will be able to view the slide show just by _opening
it. However, if you intend to produce several S5 slide shows_, and you
are displaying them on your own w*e_b\_si_t*e, it is better to keep the S5
javascript and CSS files separate from the slide shows themselves, so
that they may be **cached**. The best approach in this case is to use pandoc
without the `-s` option to produce the body of the S5 document, which
can then be inserted into an HTML template that links to the javascript
and CSS files required by S5. (See *the instructions on the S5 website.)
Alternatively, you may use `-s` together with the `--template`
option to specify a custom template.

      sldkfjlsdkjfkljsd.....lksjfsaf





You can change the style of the slides by putting customized CSS files
in `$DATADIR/s5/default`, where `$DATADIR` is the user data directory
(see `--data-dir`, above). The originals may be found in pandoc's system
data directory (generally `$CABALDIR/pandoc-VERSION/s5/default`). Pandoc
will look there for any files it does not find in the user data
directory.


slkdjflk sjdflk jsflsdjkl fsjdaflksadj flkjs lfkjsdlfjlksdjf 
lkjsdalkfjlkjalkfjdlksdjf lksjdlf kjsdlkfjlsdkjf lksajdflkjsdlkfjsdlkj 
flksdjflksdjflkjsdlfkjsdlkjf

$23984798234$



Literate Haskell support
========================

If you append `+lhs` to an *appropriate xxxinput or* output format (`markdown`,
`rst`, or `latex` for input or output; `html` for output only), pandoc
will treat the document as literate Haskell source. This means that

  - In markdown input, "bird track" sections will be parsed as Haskell
    code rather than block quotations.  Text between `\begin{code}`
    and `\end{code}` will also be treated as Haskell code.

  - In markdown output, code blocks with class `haskell` will be
    rendered using bird tracks, and block quotations will be
    indented one space, so they will not be treated as Haskell code.
    In addition, headers will be rendered setext-style (with underlines)
    rather than atx-style (with '#' characters). (This is because ghc
    treats '#' characters in column 1 as introducing line numbers.)

    sdlfkj ;lsakdjlkjsd lkfjsldkj fksjd lfkjsdlkjf oskldjflkjsdlkf:
    slkdjf lksdjflkjsdalkf jls;akdjflksjd ;lkfsjflksdjflkjsdlkjf lsdkjljf 
    lsdkjlksjdflkjsdlkf jlsdkjf lsdkjfljsdlkjf sdkj fkdsjfoiweuro 
    iutdfkhgskuadyrwoeiuroiusdfjhsdfkj shdfywueryoiwu 
    fgdsljglkjhdfkjuirweyyuroisdjflk jslkdjf lksjdfl kjsdlkfj lksdjfl kjsd

  - In restructured text input, "bird track" sections will be parsed
    as Haskell code.

  - In restructured text output, code blocks with class `haskell` will
    be rendered using bird tracks.

lksdjf ;lksadjfl s;lkfj lksjfl;ksja fljsdla;kf 
jlskdajf;lksjdaf;lkjsda;lkfjs;adlk jf;lksdajf l;ksadjfk;ljsdlfkjsdalkjf 
lsdkjflksdjflkjsdkjfkdjkfj kd jkjfd  dkjf skdjf ksdjf lksdjf wejfo iw4eufsdfk 
joeiwrufljf lweiu rlrjlskdjf lksdurlijflkjdslflweiurljdfwleirlsdfulsdjf 
lslkdfsjlfjlsk fjlksdj

  - In LaTeX input, text in `code` environments will be parsed as
    Haskell code.

  - In LaTeX output, code blocks with class `haskell` will be rendered
    inside `code` environments.

  - In HTML output, code blocks with class `haskell` will be rendered
    with class `literatehaskell` and bird tracks.

Examples:

    pandoc -f markdown+lhs -t html

reads literate Haskell source formatted with markdown conventions and writes
ordinary HTML (without bird tracks).

    pandoc -f markdown+lhs -t html+lhs

writes HTML with the Haskell code in bird tracks, so it can be copied
and pasted as literate Haskell source.
dkjf

