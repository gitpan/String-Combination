use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'String::Combination',
    'VERSION_FROM'	=> 'Combination.pm',
    'PREREQ_PM'         => { Test },
    ($] >= 5.005 ? () : (
       ABSTRACT_FROM 	=> 'Combination.pm', 
       AUTHOR     	=> 'Dree Mistrut <dree@friul.it>' 
    )),
);
