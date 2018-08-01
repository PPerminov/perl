use strict;
use warnings;

use 5.010;
my $filename = "MARCDATA.xml";
open( my $file, '<:encoding(UTF8)', $filename );

sub trim {
    my $s = shift;
    $s =~ s/^\s+|\s+$//g;
    return $s;
}
my @newAr;
while ( my $f = <$file> ) {
    # chomp $f;
    push(@newAr,trim $f);
    say trim $f;
}
