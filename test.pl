use strict;
use Test;
BEGIN { plan tests => 1 };

use String::Combination qw(combination);

ok(1); 
my @array=combination("foo",2);

my $string;

foreach (@array) { $string.= $_ }
if ($string eq 'offooffooooo') {ok(1)} else {ok(0)}

@array=combination("bar",3);

$string='';
foreach (@array) { $string.= $_ }

if ($string eq 'abrarbrabrbabrabar') {ok(1)} else {ok(0)}

@array=combination("",1);
if ((!@array) and $String::Combination::err eq 'length(string) must be an integer greater than 0') {ok(1)} else {ok(0)}

@array=combination("bar",0);
if ((!@array) and $String::Combination::err eq 'k must be an integer greater than 0') {ok(1)} else {ok(0)}

@array=combination("bar",-1);
if ((!@array) and $String::Combination::err eq 'k must be an integer greater than 0') {ok(1)} else {ok(0)}

@array=combination("bar",4);
if ((!@array) and $String::Combination::err eq 'k must be less than or equal to length(string)') {ok(1)} else {ok(0)}


