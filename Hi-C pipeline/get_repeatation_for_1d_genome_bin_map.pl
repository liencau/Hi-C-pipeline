#!/usr/bin/perl
use strict;

my($file1,$file2,$file_out,$row)=@ARGV;
open F1 ,"<",$file1 or die;
open F2 ,"<",$file2 or die;

open O,">",$file_out or die;
my %hash1;
my %hash2;
for(my $i=1;$i<=$row;$i++){
	$hash1{$i}=0;
	$hash2{$i}=0;
}

while(<F1>){
	chomp;
	my @arr=split;
	$hash1{$arr[0]}+=$arr[2];
}
while(<F2>){
	chomp;
        my @arr=split;
        $hash2{$arr[0]}+=$arr[2];
}

foreach my $key (keys %hash1){
	print O  $key,"\t",$hash1{$key},"\t",$hash2{$key},"\n";
}
