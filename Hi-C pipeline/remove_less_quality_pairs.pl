#!/usr/bin/perl
use strict;

my($file,$file_out)=@ARGV;

open F,$file or die;
open O,">",$file_out or die;
my $num;
my $total;
while(<F>){
	chomp;
	my @arr=split;
	$total++;
	if($arr[-1] >= 20 &&  $arr[-2] >= 20 ){
		print O $_,"\n";
	}
	else{
		$num++;
	}
}
print $total,"\t",$num,"\n";

