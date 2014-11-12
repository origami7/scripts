use warnings;
use strict;

# need to be in format month/day/year

          #   1   2   3   4   5   6   7   8   9   10  11  12
my @months = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

my @date1 = split(/\//, $ARGV[0]);
my @date2 = split(/\//, $ARGV[1]);
my $diff = 1;

# loop through the year
while ( ($date1[0] != $date2[0]) ||
        ($date1[1] != $date2[1]) || 
        ($date1[2] != $date2[2]) )
{
  $diff+=1;
  $date1[1]++;
  # if went over day limit in month
  if ($months[$date1[0]-1]+1 == $date1[1])
  {
    $date1[0]++;
    $date1[1] = 1;
  }
  if($date1[0] == 13)
  {
    $date1[0] = 1;
    $date1[2]++;
  }
}

print $diff."\n";
