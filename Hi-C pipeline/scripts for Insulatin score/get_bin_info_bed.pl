#!/usr/bin/perl
#use strict;
use POSIX;

my($bin_size)=@ARGV;

my %chr_length=(
	1 => 306176853,
        2 => 243312244,
        3 => 240957546,
        4 => 249748977,
        5 => 220382597,
        6 => 168720447,
        7 => 178574342,
        8 => 182612305,
        9 => 164939053,
        10 => 149041351,
);

my $bin_id=0;
my %bin_num;
for(my $i=1;$i<=10;$i++){
	my $num=$chr_length{"$i"}/$bin_size;

	if(POSIX::floor($num)== $num){
		$bin_num{"$i"}=$num;
	}
	else{
		$bin_num{"$i"}=POSIX::floor($num)+1;
	}
	
	my $start=0;
	$bin_id++;
	for(my $j=1;$j<$bin_num{"$i"};$j++){
		$start++;
		my $end=$start+$bin_size-1;
		print "$i\t$start\t$end\t$bin_id\n";
		$start=$end;
		$bin_id++;
	}
	$start++;
	$length=$chr_length{"$i"};
	print "$i\t$start\t$length\t$bin_id\n";

}
