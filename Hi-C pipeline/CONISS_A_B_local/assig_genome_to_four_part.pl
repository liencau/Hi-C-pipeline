#!/usr/bin/perl

use strict;
my ($file,$ref,$file_out)=@ARGV;

open F,$file or die;
open R,$ref or die;
open O,">",$file_out or die;

my @ARR_g;
my @ARR_l;

my $i=0;
while(<R>){
	chomp;
	my @arr=split;
	if(/name/){
        	next;
	}
	$i++;
	$ARR_g[$i]=$arr[5];	
}

$i=0;
while(<F>){
	chomp;
        my @arr=split;
        if(@arr>=2){
                $i++;
                $ARR_l[$i]=$arr[5];
        }
}

for($i=1;$i<@ARR_l;$i++){
	if($ARR_g[$i]>0){
		if($ARR_l[$i]>0){
			print O "A_A\t$ARR_g[$i]\t$ARR_l[$i]\n";
		}
		else{
			print O "A_B\t$ARR_g[$i]\t$ARR_l[$i]\n";
		}
	}
	else{
		if($ARR_l[$i]>0){
                        print O "B_A\t$ARR_g[$i]\t$ARR_l[$i]\n";
                }
                else{
                        print O "B_B\t$ARR_g[$i]\t$ARR_l[$i]\n";
                }
        }
}
