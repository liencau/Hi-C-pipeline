#!/usr/bin/perl
use strict;

my(@file)=@ARGV;

for(my $i=0;$i<@file;$i++){	
	open F,$file[$i] or die;
	my %hash;
	my $header;
	while(<F>){
		if(/bin(.*)bin/){
			next;
		}
		chomp;
		my @arr=split /\t+/ ,$_;
		$header.="\t$arr[0]";
		my @A=split /\|/,$arr[0];
		$A[0] =~ s/bin//;
		$hash{$A[0]}=1;
		
	}
	close F;
	open F,$file[$i] or die; 
	open O ,">","$file[$i]\_modified" or die;
	print O $header,"\n";
	while(<F>){
		chomp;
		if(/bin(.*)bin/){
                        next;
                }
		my @arr=split /\t+/ ,$_;
		print O $arr[0];
		for( my $j=1;$j<@arr;$j++){
			if(exists $hash{$j}){
				print O "\t$arr[$j]";
			}
		}
		print O "\n";
	}
}
