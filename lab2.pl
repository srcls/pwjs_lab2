use strict;
use warnings;

if(!defined $ARGV[0]){
    print "Usage: perl lab2.pl file_directory";
    exit;
}

my $file = $ARGV[0];
open(my $fh, $file) or die $!;



close $fh;