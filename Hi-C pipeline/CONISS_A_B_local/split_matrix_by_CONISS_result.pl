#!usr/bin/perl
use strict;
my($file,$ref,$dir,$chr)=@ARGV;

open F,$file or die;
open R,$ref or die;

my @C;
my $i=0;

while(<R>){
	chomp;
	my @arr=split;
	if(/name/){
		next;
	}
	for(my $j=0;$j<@arr;$j++){
		$i++;
		$C[$i]=$arr[$j];
	}
}

my $class=0;
$i=0;
my $seq=<F>;

while(<F>){
	chomp;
	$i++;
	unless($C[$i]  == $class){
		$class= $C[$i] ;
		open O,">","$dir/$chr\_part$class" or die;
		print O $seq;
	}	
	print O $_ ,"\n";
}
print $class,"\n";
