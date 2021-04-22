#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1

#mkdir chro_bin_num
#mkdir bin_bed_info
perl get_bin_num_for_each_chro.pl 1000 > chro_bin_num/1kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 10000 > chro_bin_num/10kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 20000 > chro_bin_num/20kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 25000 > chro_bin_num/25kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 40000 > chro_bin_num/40kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 80000 > chro_bin_num/80kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 100000 > chro_bin_num/100kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 500000 > chro_bin_num/500kb_chro_bin_num
#perl get_bin_num_for_each_chro.pl 1000000 > chro_bin_num/1Mb_chro_bin_num

perl get_bin_info_bed.pl 1000 > ./bin_bed_info/1kb_bin_bed_info
#perl get_bin_info_bed.pl 10000 > ./bin_bed_info/10kb_bin_bed_info
#perl get_bin_info_bed.pl 20000 > ./bin_bed_info/20kb_bin_bed_info
#perl get_bin_info_bed.pl 25000 > ./bin_bed_info/25kb_bin_bed_info
#perl get_bin_info_bed.pl 40000 > ./bin_bed_info/40kb_bin_bed_info
#perl get_bin_info_bed.pl 80000 > ./bin_bed_info/80kb_bin_bed_info
#perl get_bin_info_bed.pl 100000 > ./bin_bed_info/100kb_bin_bed_info
#perl get_bin_info_bed.pl 500000 > ./bin_bed_info/500kb_bin_bed_info
#perl get_bin_info_bed.pl 1000000 > ./bin_bed_info/1Mb_bin_bed_info
