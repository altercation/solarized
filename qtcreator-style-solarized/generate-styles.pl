#!/usr/bin/env perl
use strict;
use Template;

my $vars = {
  base03  => "#002b36",
  base02  => "#073642",
  base01  => "#586e75",
  base00  => "#657b83",
  base0   => "#839496",
  base1   => "#93a1a1",
  base2   => "#eee8d5",
  base3   => "#fdf6e3",
  yellow  => "#b58900",
  orange  => "#cb4b16",
  red     => "#dc322f",
  magenta => "#d33682",
  violet  => "#6c71c4",
  blue    => "#268bd2",
  cyan    => "#2aa198",
  green   => "#859900",
};

my $tt = Template->new({INTERPOLATE=>1}) || die "$Template::ERROR\n";


# first light variant...
$vars->{variant} = "light";
$vars->{bg}      = $vars->{base3};
$vars->{bg1}     = $vars->{base2};
$vars->{text}    = $vars->{base00};
$vars->{emph}    = $vars->{base01};
$vars->{lite}    = $vars->{base1};

$tt->process("qtcreator-template.xml", $vars, "solarized-light.xml");



$vars->{variant} = "dark";
$vars->{bg}      = $vars->{base03};
$vars->{bg1}     = $vars->{base02};
$vars->{text}    = $vars->{base0};
$vars->{emph}    = $vars->{base1};
$vars->{lite}    = $vars->{base01};

$tt->process("qtcreator-template.xml", $vars, "solarized-dark.xml");

