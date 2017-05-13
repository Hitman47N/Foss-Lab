#!/usr/bin/perl -w

$string = 'amrith';
$string =~ tr/^a[a-zA-Z]+/word/;

print "$string\n";
