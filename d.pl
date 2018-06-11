use strict;
use warnings;

open(NEW, "words.txt");

while(<NEW>)
{
    # d) finds words containing "de" and print replacing "de" with "".
    
    if($_ =~ /de/)
    {
        my $str = $_;
        $_ =~ s/de//;
        print "$str->$_ \n";
    }
}

close(NEW);