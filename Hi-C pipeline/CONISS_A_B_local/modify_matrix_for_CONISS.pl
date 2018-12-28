#!/usr/bin/perl
use strict;

my($file,$file_out)=@ARGV;
open F,$file or die;
open O,">",$file_out or die;

my $j;
print O "\t";
while(<F>){
	chomp;
	my @arr=split;
	for(my $i=0;$i<@arr-1;$i++){
		 $j=$i+1;
		print O "comp$j\t";
	}
	$j=@arr;
	print O "comp$j\n";
	last;
}
close F;
open F,$file or die;


$j=0;
while(<F>){
	chomp;
	$j++;
	print O $j,"\t",$_,"\n";
}

