# Subroutines
# It is functions in perl
# We use the sub to initialise a function in perl
use strict;
use warnings;
use feature qw/ signatures /;

use Data::Dumper;

sub test{
    print "Hello \n";
}

test();

# To pass arguements in the function 
# All the argumenets are stored in this array @_
# To get any arguement we have to get it from this array only

sub test_2{
    # my $name = @_[0];
    # Both are correct
    # my $name = $_[0];

    # We can either store it in a array and then use that array to get the arguements
    my @arr = @_;
    my $name = $arr[0];

    # We can also use the shift function to get the arguement
    # my $name= shift @_;
    # This will remove the arguement from the array so we can't access them anymore the @_
    

    my $name_2 = @_[0];
    print $name." said hello\n";
    print $name_2." also said hello\n";
}

test_2("Lakshay","Rahul");

# Now here we use the references
# We dont pass the whole array we just pass its reference

my @arr = qw\a b c\;
sub test_3{
    my $arr_ref = shift @_;
    push $arr_ref->@* ,"func";
    # If we pass the array only we cant push element in it 
}
test_3(\@arr);
print Dumper(@arr);   

# In a subroutine we can redeclare the same variable because its scope is within the subroutine only
# It can still access the variable outside the function
my $var_1=21;
sub test_4{
    my $var_1 = 22;
    print Dumper($var_1);
}
test_4();

# The function in default returns values that is in last statement of function 
# SO we have to write return undef to not return anything

sub test_5{
    my $a =1;
    my $b = 2;
    my $c = $a+$b;
    return undef;

}
print Dumper(test_5());

# We can use this feature only by the library feature
sub test_6($name){
    print "Hello ".$name."\n";
}
test_6("Lakshay");

# We can pass a default value also to this so that if we don't pass any value it takes the default value
# So the optional arguements should be at the last and the mandatory one in the begining
sub test_7($last_name,$name='Lakshay'){
    print "Hello ".$name." ".$last_name."\n";
}
test_7("Lakshay","goel");

# We can also pass the hash using their references only
sub test_8(%hash2){
    print Dumper(\%hash2);
}
test_8(
    1=>"Lakshay",
    2=>"Rahul",
);

# We can make so that first arguement is only one variable and the rest in the array
# In this only the lakshay is stored in the name variable and rest are stored in array last name
sub test_9($name,@last_name){
    print Dumper($name);
    print Dumper(\@last_name);
}
test_9("Lakshay","Goel",[2,1,4]);