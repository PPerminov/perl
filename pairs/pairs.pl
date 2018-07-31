use strict;
use warnings;
use 5.010;
# use 6;

package Pairs;

sub cons {
    my ($car) = $_[0];
    my ($cdr) = $_[1];
    return sub {
        if ( $_[0] eq "car" ) {
            return $car;
        }
        else {
            return $cdr;
        }
      }
}

sub car {
  my $f = \@_;
  # say \$f;
    return ($f)->('car');
}

sub cdr {
    return \$_[0]('cdr');
}

my $pair = cons(66,77);
my $first = car($pair);
my $second = cdr($pair);
# say $first;
# say $second;
1;
