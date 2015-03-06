use strict;
use warnings;

my $filename = "login_data_source.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
  chomp $row;
  my @array = split(',',$row );
  my $username = $array[2];
  $username =~ s/^\s+//;
  my $timestamp = $array[4];
  $timestamp =~ s/^\s+//;
  my $status = "0";
  if( $array[3] > 10000 ) {
	  $status = "1";
  }
  my $qry = "INSERT INTO LOGIN (username,login_time,status) VALUES('$username',timestamp'$timestamp',$status);";
  print $qry."\n";
}


