#!/usr/bin/perl
#
# usage: remove-unnecessary-features < features

$f = do {local $/; <>};
$f =~ s/\n.*feature jp78;.*\n/\n/g;
$f =~ s/\nfeature jp78 {.*} jp78;\n//gs;
$f =~ s/\n.*feature jp83;.*\n/\n/g;
$f =~ s/\nfeature jp83 {.*} jp83;\n//gs;
$f =~ s/\n.*feature jp90;.*\n/\n/g;
$f =~ s/\nfeature jp90 {.*} jp90;\n//gs;
$f =~ s/\n.*feature nlck;.*\n/\n/g;
$f =~ s/\nfeature nlck {.*} nlck;\n//gs;
print $f;