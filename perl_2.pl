# !usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# There are only three types of data in perl 
# We will only discuss string in this
# String (Scalar)
my $test = 1;

# We can't define same variable twice
# my $test = 1;

my $var_1 = 2.1;
# We can add or subtract the float and int
# To append in a string we use the dot 
print $test - $var_1."\n";
print $test + $var_1."\n";
print $test / $var_1."\n";
print $test * $var_1."\n";


my $str_1 = "lakshay";
my $str_2 = "Coder";
# We can't add them this way we have to append them using the . only
# print $str_1 + $str_2;

print $str_1." ".$str_2."\n";

my $str_3 = "hello $str_1";
print $str_3."\n";

# Both print same output
print "Hello $str_2 \n";
print "Hello ".$str_2."\n";

# Escape sequence
print "Hello \$str_2\n";


# We can use in built debugger of perl
my $a = "Lakshay";
my $b = 32;

# This is not the best use of debugger we will get its help when we use further data types
print Dumper($a,$b);
