use strict;
use warnings;
use 5.010;
require "./pairs/pairs.pl";
require "./lists/lists.pl";

package Node;

sub nodeList {
  return Lists::list(@a)
}

sub node {
    my ($name)     = $_[0];
    my ($params)   = $_[1];
    my ($children) = $_[2];
    my ($value)    = $_[3];
    return sub {
        if ( $_[0] eq "name" ) {
            return $name;
        }
        else {
            if ( $_[0] eq "params" ) {
                return $params;
            }
            else {
                if ( $_[0] eq "children" ) {
                    return $children;
                }
                else {
                    return $value;
                }
            }
        }
      }
}

sub getFirstParameter {
  return Lists::head(@_);
}

sub getOtherParameters {
  return Lists::tail(@_);
}

sub createParameters {
    return Lists::list(@_);
}

sub createParameter {
    return Pairs::cons( $_[0], $_[1] );
}

sub createChildren {
  return Lists::list(@_);
}

sub getParameterName {
    return Pairs::car( $_[0] );
}

sub getParameterValue {
    return Pairs::cdr( $_[0] );
}

sub getNodeName {
    return $_[0]("name");
}

sub getNodeParams {
    return $_[0]("params");
}

sub getNodeChildren {
    return $_[0]("children");
}

sub getNodeValue {
    return $_[0]("value");
}

1;
