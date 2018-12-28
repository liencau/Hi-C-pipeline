#!/usr/bin/perl
use strict;
my ($file,$file_out)=@ARGV;
open F,"<",$file or die;
open O,">",$file_out or die;
while(<F>){
	chomp;
	my @arr=split;
	$arr[1]--;
	my $seq=join "\t",@arr;
	print O $seq,"\n";
}
