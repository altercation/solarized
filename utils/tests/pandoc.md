% Pandoc Test File
% Ethan Schoonover
% March 22, 2011

%% format: markdown+lhs

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
