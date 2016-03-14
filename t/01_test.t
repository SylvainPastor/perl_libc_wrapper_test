use strict;
use warnings;

use Test::More tests => 4;
use mylibDemo ':all';

require_ok( 'mylibDemo' );

my $res = mylibDemo::xs_sum_func(3, 2);
is( $res, 5, 'xs_sum_func(3, 2) == 5' );

my $res2 = mylibDemo::mylibc_add($res, 1);
is( $res2, 6, 'mylibc_add(5, 1) == 6' );

is(mylibDemo::mylibc_foo_char(), 'foo!', 'mylibc_foo_char() == foo!');
