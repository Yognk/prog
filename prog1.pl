#!C:\strawberry\perl\bin\perl.exe

use strict;
use warnings;
use Data::Dumper qw(Dumper);
use Path::Class; 
use File::Basename;



my $dirname = dirname(__FILE__);
 


my $count_lines=0 ;
my $filename = "$dirname/data.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
my $input = <$fh>;



while (<$fh>) {
    $count_lines++;
   
}
#print $count_lines ;

if ($input =~ /^[0-9]+$/){
    #print "The string contains only number characters \n";
}

	


  
 
  

my $fileout = "$dirname/output.txt";

open(my $fhi, '>', $fileout) or die "Could not open file '$fileout' $!";


  
if ($count_lines == 0 && $input =~ /^[0-9]+$/){
	my @arrayout = uniq($input);
  
	foreach my $line ( @arrayout ) {
    # # Add numbers to the file
     $fhi->print($line );
	}
  
  
  
	} 
    
	else {
		print "Error";
		}
  
  
  
  
  
  
  
  
  sub uniq {
    my $row =shift;
	

my $numberdigits = $row /2 ;

my @array ;
my @arraynumber;
my $count = 0;
my $countnum ;
my $string1 ;

for(my $in=0 ; $in < 10**$numberdigits  ; $in++ ) {
		
		my $inexponen = $in**2 ;
		my $s1;
		if ((length($inexponen) == 1)){ 
			$string1 = 0;
		}
		else {
		 $s1 = substr($inexponen, 0, int(length($inexponen)/2));
		 $string1 = sprintf( "0" x (length($inexponen)%2) . $s1);
			}
		
		my $s2 = substr($inexponen,int(length($inexponen)/2),int(length($inexponen)) );
		my $s3;
		if ($inexponen == ($string1+$s2)**2){
		
			
			
			#print "number $in \n" ;
			#print "s1 $string1 \n";
			#print "s2 $s2  \n" ;
			#print "\n";
		
		 
			$s3=$string1.$s2;
			#print "s3 $s3 \n";
			$array[$count]=$s3 ;
			
		
			
		
			$count++;	
			
			$countnum = $count;
				
									}
		
		
		}

		
	
	for(my $in=0 ; $in < $count  ; $in++ ) {
	$arraynumber[2*$in]=$array[$in];
	$arraynumber[2*$in+1]=", ";
	
	}
	$arraynumber[2*$count-3]=",dan ";
	delete $arraynumber[2*$count-1];
	 #print Dumper \@arraynumber;
	
	return @arraynumber;
	
}
  