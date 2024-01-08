# References
use strict;
use warnings;

use Data::Dumper;

my $scalarr= 21;
my @arr = qw/ok lets go/;
my %hashh = (1=>21,2=>42,3=>63);

# We have references in perl
# To access them we use backslash \ before them
# And obviously the address of a particular value cant change

print \@arr."\n";
print \%hashh."\n";
print \$scalarr."\n";

my $ref1= \@arr;
my $ref2= \@arr;

# We can push element to just the references
# push ref1,22;

# We have to dereference first to access the array 
# SO we use this
push $ref1->@*,22;

print Dumper(@arr);

# If we have to directly make references we can 
my $hashh2 = {
    hello=>121,
    ok=>2,
};
print Dumper($hashh2);

my $arr_ref = [1,2,3];
print Dumper($arr_ref);

# If we have use a particular value we can similar concept of accessing like in normal hash
# In this we just have to just derefer it 
print Dumper($hashh2->{hello});

# We can dereference with just using the symbol like for array it is @ and for hash it is %
print Dumper(%$hashh2);
# Both works 
print Dumper(%{$hashh2})."\n";

# We can create nested references
my $hash_ref_2={
    a=>1,
    b=>2,
    c=>{
        new=>1,
        new_2=>2,
        deeply=>[2,3,4,5],
    },
};
print Dumper(%$hash_ref_2)."\n";
print Dumper($hash_ref_2->{c}->{'deeply'})."\n";
print Dumper($hash_ref_2->{c}->{'deeply'}->[3])."\n";


# Similarly we can do this with arrays
my $arr_ref_2=[
    1,
    [qw/a b c/],
    {
        a=>1,
        b=>2,
        c=>[
            78,
            {
                o=>7,
                q=>[qw/find this/],
            },
        ],
    },
];

print Dumper($arr_ref_2->[2]->{c}->[1]->{q}->[1]); #this

# This will tell to what refernce it is
print Dumper(ref($hash_ref_2));

# This will give the keys
print Dumper(keys $hash_ref_2->%*);

# This will give the values
print Dumper(values $hash_ref_2->%*);

# This will delete the values
delete $hash_ref_2->{a};
print Dumper(%$hash_ref_2);