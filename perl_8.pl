# Exception and Errors
use warnings;
use strict;
use Data::Dumper;

print "Before Dying"."\n" ;

# We use the word die to end the program
# die;

# We can enter custom text to the die and that will be printed 
# die "Custom Exception";

my $name = "Lakshay";
# To handle exception we use the word eval
eval{
$name= "Alive";
die "Program died!!";
$name="Died";
};
# To know which exception was thrown we use the $@
# This will tell whether any exception was thrown or not
# It will tell the last exception that was thrown

# Program didn't died
print"Hello $@"."\n";

print $name; #Alive will be printed

# We have another variable called warn 
# That throws a warning and don't stop the program
warn "Something is not right";


1;