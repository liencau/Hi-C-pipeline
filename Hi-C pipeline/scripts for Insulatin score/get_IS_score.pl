#!/usr/bin/perl
use strict;

my ($file,$ref1,$ref2,$file_out)=@ARGV;

open F,"<",$file or die;
open R1,"<",$ref1 or die;
open R2,"<",$ref2 or die;
open O ,">",$file_out or die;

my %hash;
while(<F>){
	chomp;
	my @arr=split;
	my $key="$arr[0]\t$arr[1]";
	$hash{$key}=$arr[2];
}

my %bin_cord;
while(<R2>){
	chomp;
	my @arr=split;
	$bin_cord{$arr[3]}="$arr[0]\t$arr[1]\t$arr[2]";
}

while(<R1>){
	chomp;
	my @arr=split;
	my $start =$arr[2];
	my $end =$arr[3];
	for(my $i=$start+20;$i<=$end-20;$i++){
		print O $bin_cord{$i},"\t";
		my $left_up;
		my $right_down;
		for(my $k=$i-20;$k<$i;$k++){
			for(my $n=$k;$n<$i;$n++){
				$left_up +=$hash{"$k\t$n"};
			}
		}
		for(my $k=$i+1;$k<=$i+20;$k++){
			for(my $n=$k;$n<=$i+20;$n++){
				$right_down +=$hash{"$k\t$n"};
			}
		}
		
		my $other;
		for(my $k=$i-20;$k<$i;$k++){
			for(my $n=$i+1;$n<=$i+20;$n++){
				$other+=$hash{"$k\t$n"};
			}
		}
		my $value;
		if(($left_up+$right_down)==0){
			$value="NA";
		}
		else{
			$value=$other/($left_up+$right_down);
		}
		print O $value,"\n";
	}
}
