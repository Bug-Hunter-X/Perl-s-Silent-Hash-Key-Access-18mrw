# Perl's Silent Hash Key Access

This example demonstrates a potential issue in Perl where accessing a non-existent key in a hash doesn't throw an error, but instead returns `undef`. This can make debugging harder as the error isn't immediately apparent. The solution shows how to safely access hash keys using the defined-or operator (`||`) or the defined-or-null operator (`//`).