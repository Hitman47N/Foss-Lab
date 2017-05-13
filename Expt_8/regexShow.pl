#!/usr/bin/perl
print "Enter a string : ";
$var=<>;
#$var="The cat sat on the dog";#
$sub=$var;
print "Enter Strings: ";
$a=<>;
print "Enter string to replace with: ";
$b=<>;
$sub=~ s/\Q$a/\Q$b/;
print "\nSubstituted  String is $sub\n";
$trans=$var;
$trans=~ tr/a-z/A-Z/;
print "\nTransformed String is $trans\n";
$match=$var;
print "\nEnter string to match";
$mch=<>;
if($match =~ m/\Q$mch/)
{	print "Matched";	}
else
{	print "Not Matched";	}

