use strict;
use warnings;
use Data::Dumper;

# HashMap 
# It is similar to dictonary in python
# In this the order keep on changing
# In this keys are unique

my %map = (
    a=>20,
    b=>'hello',
    c=>11.22,
    c=>21,#This value will be used in c key
    d=>undef, #This will make it undefined
);

my %map2 = (
    hello=>1,
    %map,
    # We can also override the value of the first map through this new map
    c=>"Changed",   
);


# We can access any element like this
print Dumper($map{"a"});
print Dumper(%map2);

# We can access particular elements also just like arrays
print Dumper(@map{'a','b'});

# We can get keys also
print Dumper(keys %map);

# This will give the size of the hash
my $size = keys %map;
print Dumper($size);

# We can also check whether an element is defined or not
my $exitss =   exists $map{'d'}?'yes':'no';
print Dumper($exitss);

# We can delete elements using just delete keyword
delete $map{'a'};
print Dumper(%map);
