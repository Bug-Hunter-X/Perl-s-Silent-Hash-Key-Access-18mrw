my %hash = ( a => 1, b => 2, c => 3 );

my $key = 'd';

# Safer way to access hash keys using the defined-or operator
my $value = $hash{$key} || 0;
print "Value using ||: $value\n"; # prints 0

#Even better using the defined-or-null operator
my $value2 = $hash{$key} // 0;
print "Value using //: $value2\n"; # prints 0

# Check if key exists before accessing
if (exists $hash{$key}) {
    print "Value of key '$key': $hash{$key}\n";
} else {
    print "Key '$key' does not exist.\n";
}

#Using the exists function is the most robust and explicit method to avoid unexpected undef values