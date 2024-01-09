# Variable Scopes
# In perl there are variable scoping in which we use the word our and my keyword
# our is used like public and my is private
use warnings;
use strict;
use feature qw/ state /;

use Data::Dumper;
require './test_7.pl';
# Then we tell which variable we want to use 
# We then put them in our and then can use them
our($name);

print $name."\n";

# We also have concept of static in perl 
# For that we use the keyword static

sub test{
    state $var = 21;
    $var++;
    # Here the output will be 22 23 24 while if we use the my then we will get the output 22 22 22 
    print ">>>".$var."\n";
}

test();
test();
test();


sub test_2{
    state %map=(
        a=>1,
        b=>2,
        c=>3,
    );
    print $map{ $_[0] }."\n";
    # Here we are taking the arguments that are passed in the function

    print $map{ $_[1] };
};
test_2('a','c');