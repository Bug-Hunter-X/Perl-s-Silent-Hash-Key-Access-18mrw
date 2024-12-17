my %hash = ( a => 1, b => 2, c => 3 );

my $key = 'd';

# This will not throw an exception
print $$hash{$key};

# undef or 0 depending on context
print $hash{$key};

my $value = $hash{$key} || 0; # common workaround
print $value; # will print 0

my $value2 = $hash{$key} // 0; # better workaround
print $value2; # will print 0