use strict;
use warnings;

open(NEW, "words.txt");

while(<NEW>)
{
    # c) prints words beginning with the letter "a", having" a" as the third character and ending with the letter "s".

    my $str = $_;
    my $secstr = substr $str, 0, 1;
    my $thirdstr = substr $str, 2, 1;
    my $fourthstr = substr $str, -3, 1; # why does it works on -3 not on -1 ? It should be asked.
    
    if($secstr =~ /a/)
    {
        if($thirdstr =~ /a/)
        {
            if($fourthstr =~ /s/)
            {
                print $str;
            }
        }       
    }
}

close(NEW);