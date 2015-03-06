use strict;
use warnings;

my $filename = "login_data_source.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
  chomp $row;
  my @array = split(',',$row );
  chomp $array[0];
  chomp $array[1];
  chomp $array[2];
  chomp $array[3];
  chomp $array[4];
  
  my $qry = "INSERT INTO LOGIN VALUES('$username',timestamp'$timestamp',$status);";
  print $qry."\n";
}
