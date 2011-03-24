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
