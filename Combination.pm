package String::Combination;

use strict;
use warnings;
use Carp;

require Exporter;
require DynaLoader;
use AutoLoader;

our @ISA = qw(Exporter DynaLoader);

our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
combination
);
our $VERSION = '0.01';

bootstrap String::Combination $VERSION;

1;
__END__

=head1 NAME

String::Combination - An algorithm to calculate all the strings resulting from a combination of 
k characters from n characters available.

=head1 SYNOPSIS

 use String::Combination qw(combination);

 my @array=combination("foo",2);

 print "$_ " foreach (@array);

 #prints of fo of fo oo oo 


 my @array=combination("bar",3);

 print "$_ " foreach (@array);

 #prints abr arb rab rba bra bar 


=head1 DESCRIPTION

From a set of n elements, given an integer k, the algorithm calculates 
k! * n!/(k!(n-k)!) elements that are all the combinations of k elements 
from the set of n elements.

The combination function needs a string (every character is an element of the set 
of n=length(string) elements) and an integer value that is k.

The function returns a list of values.

If the function returns an empty list, an error has occured and you can retrive its 
description from $String::Combination::err .


=head1 AUTHORS

The C algorithm and code is by Andrea Gasparri, the XS glue is by Dree Mistrut with a help 
from dada <F<dada@perl.it>>.

Copyright 2004 Andrea Gasparri <F<andrea@slack.z00.it>> and Dree Mistrut <F<dree@friul.it>>.

This package is free software and is provided "as is" without express
or implied warranty.  You can redistribute it and/or modify it under 
the same terms as Perl itself.

=cut
