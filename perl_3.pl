use strict;
use warnings;
use Data::Dumper;

# This is array we 
my @test = (
    22,
    'hello',
    1.22,
);
print Dumper(@test);

# To break a sentence we use the qw (quote word) 
my @test_2 = qw/one two three/;
print Dumper(@test,@test_2);

# We can normally use the index to print the particular element
print($test_2[1]."\n");
print($test_2[-1]."\n"); #Last element

# This is used to get the last index of the array
my $last_index = $#test_2;
print $last_index."\n";

# This will give the number of elements
my $var_2 = @test_2;
print $var_2."\n";

# We can populate the array like this also
my @arr2 = (2..10);
print Dumper(@arr2)."\n";

# We can also populate letter using it

my @arr3 = ('a'..'g');
print Dumper(@arr3);

# We can similarly access the elements using this
print Dumper(@test_2[1..2]);


# Operation on array
# push
push @test_2,21;
# Add items to the last

# pop
pop @test_2;
# Removes items from the last

# shift
shift @test_2;
# Remove the item from the first

# unshift
unshift @test_2,'one';
# Add item to the first

print Dumper(@test_2);

# we can also sort the list
my @test_3 = qw/e d b a c f/;
@test_3 = sort @test_3;
print Dumper(@test_3);

# To sort the number we have to use the operators
my @test_4 = (23,1,4,3,30);
@test_4 = sort{$a<=> $b} @test_4;# Increasing order

@test_4 = sort{$b<=> $a} @test_4;# Decreasing order

print Dumper(@test_4);