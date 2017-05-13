#!/usr/bin/perl
use DBI;
use strict;

my $driver = "mysql"; 
my $database = "Foss";
my $dsn = "DBI:$driver:database=$database";
my $userid = "root";
my $password = "linux4amrc";
my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;
my $sth = $dbh->prepare("INSERT INTO student
                       (name , phone )
                        values
                       ('poke',111);");
$sth->execute() or die $DBI::errstr;
$sth->finish();
#$dbh->commit or die $DBI::errstr;

