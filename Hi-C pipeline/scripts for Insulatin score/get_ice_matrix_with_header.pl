#!/usr/bin/perl -w
use strict;

my ($in,$resolution,$out1,$out)=@ARGV;
open IN,"$in" or die;
open OUT,"+>$out" or die;
my $row=0;
my $row_header;
while(<IN>){
	chomp;
	my ($chr,$stt,$end)=(split(/\s+/,$_))[0,1,2];
	my @ss=split;
	 my $num=@ss;
	$row++;
	my $header="bin$row|en$resolution|$chr:$stt-$end";
	$row_header=$row_header."\t".$header;
	print OUT "$header\t";
	for(my $i=3;$i<=$num-1;$i++){
                if($i<=$num-2){
                	print OUT "$ss[$i]\t";
                }else{
                	print OUT "$ss[$i]";
                }
        }
        print OUT "\n";
}
close IN;
close OUT;
open OUT1,"+>$out1" or die;
print OUT1 "$row_header\n";
close OUT1;
