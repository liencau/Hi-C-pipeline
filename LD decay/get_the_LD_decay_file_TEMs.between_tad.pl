#!/usr/bin/perl
use strict;
use warnings;

my @files = <./Chr*.TERRA_SNPs_imputed.geno.ld.between_tad.gz>;

my %hash_TEMs;
my %hash_TEMs_adding;
foreach my $file(@files){
	if($file =~ /gz/){
		open NEW,"zcat $file |" or die;
	}
	else{
		open NEW,"$file" or die;
	}

	while(<NEW>){
		chomp;
		next if (/nan/);
		my @array = split /\s+/;
		my $distance = $array[2] - $array[1];
		my $int = int($distance/100)*100;
		$hash_TEMs{$int}++;
		$hash_TEMs_adding{$int}+=$array[3];
	}
	close NEW;
}

open NEW,">./LD_decay_TEMs.between_tad.100bp" or die;
print NEW "Distance(bp)\tAverage_R2\n";
foreach my $key(sort {$a <=> $b} keys %hash_TEMs){
	my $average = $hash_TEMs_adding{$key}/$hash_TEMs{$key};
	print NEW "$key\t$average\n";
}
close NEW;
