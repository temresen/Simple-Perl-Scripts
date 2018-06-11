use strict;
use warnings;

open(NEW, "words.txt");

while(<NEW>)
{
    # a) prints words containing "non" or "nan"

    if($_ =~ /non/ | $_ =~ /nan/)
    {
        print $_;
    }
}

close(NEW);