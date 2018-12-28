#!/usr/bin/perl
use strict;

my ($file,$ref1,$ref2,$dir)=@ARGV;

open F,"<",$file or die;
open R1,"<",$ref1 or die;
open R2,"<",$ref2 or die;

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
	open O ,">","$dir/$arr[0]\.matrix" or die;
	my $start =$arr[2];
	my $end =$arr[3];
	for(my $i=$start;$i<=$end;$i++){
		print O $bin_cord{$i},"\t";
		for(my $j=$start;$j<$end;$j++){
			if(exists $hash{"$i\t$j"} || exists $hash{"$j\t$i"}){
				if(exists $hash{"$i\t$j"}){
					print O $hash{"$i\t$j"},"\t";
				}
				else{
					print O $hash{"$j\t$i"},"\t";
				}
			}
			else{
				print O 0,"\t";
			}
		}
			
		if(exists $hash{"$i\t$end"} || exists $hash{"$end\t$i"}){
                        if(exists $hash{"$i\t$end"}){
                                print O $hash{"$i\t$end"},"\n";
                         }
                         else{
                                print O $hash{"$end\t$i"},"\n";
                        }
                }
                else{   
                        print O 0,"\n";
                }

		
	}
}
	
