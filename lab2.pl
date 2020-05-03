if(!defined $ARGV[0]){
    print "Usage: perl lab2.pl file_directory";
    exit;
}

$file = $ARGV[0];
open(my $fh, $file) or die $!;


while (my $line = <$fh>){
    if($line =~ m/DTSTART;.*T(\d{4})/){
	    $startHour = substr($1, 0, 2);
        $startMinute = substr($1, 2, 2);
    }
    if($line =~ m/DTEND;.*T(\d{4})/){
	    $endHour = substr($1, 0, 2);
        $endMinute = substr($1, 2, 2);
    }

    $fullTimeMin += ((int($endHour) - int($startHour))*60) + (int($endMinute) - int($startMinute));
    
}

#print "$fullTimeMin full minutes \n";

#print $fullTimeMin/60, " all hours \n";

print $fullTimeMin/45, " all lesson hours \n";


close $fh;