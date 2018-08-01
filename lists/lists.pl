use strict;
use warnings;
use 5.010;
require "./pairs/pairs.pl";
package Lists;

sub list {
    my $current = shift @_ or return undef;
    return Pairs::cons( $current, list(@_) );
}

sub head {
  return Pairs::car(@_);
}

sub tail {
  return Pairs::cdr(@_);
}

my $list = list(11,2,3,4,5,6);
my $first = head($list);
1;
