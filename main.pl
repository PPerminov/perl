#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;
# package Main;
# require "./lists/lists.pl";
# require "./pairs/pairs.pl";
# my $l = Lists::list(1,2,3,4,5,6);
# my $h = Lists::head($l);
# say Lists::head(Lists::tail($l));

sub foo {
  say "foo";
}

sub bar {
  say "bar";
}
my @array = {
\&foo,
\&bar
};


say $array[0]->();
