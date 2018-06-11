use strict;
use warnings;

open(NEW, "words.txt");

while(<NEW>)
{
    # b) prints words starting with "a" or "e" or "o" and with the fourth character "t" or "d"

    my $str = $_;
    my $secstr = substr $str, 0, 1;
    my $thirdstr = substr $str, 3, 1;

    if($secstr =~ /a/ | $secstr =~ /e/ | $secstr =~ /o/)
    {
        if($thirdstr =~ /t/ | $thirdstr =~ /d/)
        {
            print $str;
        }       
    }
}

close(NEW);