#!perl -w

# Time-stamp: <2002/04/06, 13:12:13 (EST), maverick, csvformat.pl>
# Two pass CSV file to table formatter

$delim = $#ARGV >= 1 ? $ARGV[1] : ',';
print STDERR "Split pattern: $delim\n";

# first pass
open F, "<$ARGV[0]" or die;
while(<F>)
{
  chomp;
  $i = 0;
  map { $max[$_->[1]] = $_->[0] if $_->[0] > ($max[$_->[1]] || 0) }
    (map {[length $_, $i++]} split($delim));
}
close F;

print STDERR 'Field width:   ', join(', ', @max), "\n";
print STDERR join(' ', map {'-' x $_} @max);

# second pass
open F, "<$ARGV[0]" or die;
while(<F>)
  {
  chomp;
  $i = 0;
  map { printf("%-$max[$_->[1]]s ", $_->[0]) }
    (map {[$_, $i++]} split($delim));
  print "\n";
}
close F;
