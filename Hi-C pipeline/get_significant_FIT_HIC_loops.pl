#!usr/bin/perl 
use strict;

my($dir)=@ARGV;

open F ,"zcat $dir/FIT_HIC.spline_pass2.significances.txt.gz|" or die;
open O1,">","$dir/FIT_HIC_intra_loops.txt";
open O2,">","$dir/FIT_HIC_inter_loops.txt";
open O3,">","$dir/FIT_HIC_loops.statistic";

my %hash;
my $j=0;
while(<F>){
	chomp;
	if(/fragmentMid1/){
		next;
	}
	my @arr=split;
	if($arr[6] <=0.05){
		if($arr[0] eq $arr[2]){
			print O1 "$_\n";
			my $length=$arr[3]-$arr[1];
			$j++;
			$hash{$j}=$length;	
		}
		else{
			print O2 "$_\n";
		}
	}
}

my $num=0;
my $sum;
my $max=0;
my $min=1000000000;
foreach my $key (keys %hash){
	if($min >$hash{$key}){
		$min=$hash{$key};
	}
	if($max< $hash{$key}){
		$max=$hash{$key};
	}


	$num++;
	$sum+=$hash{$key};
}

my $ave=$sum/$num;

print O3 "loop num at FDR 0.05 is : $num\n";
print O3 "loop length info is at $ave\t$max\t$min\n";
