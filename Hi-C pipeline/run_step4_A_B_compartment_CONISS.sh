#!/bin/bash
#
#$ -cwd
#$ -j y
#
#$ -S /bin/bash

mkdir CONISS_A_B_local
cd CONISS_A_B_local

for ((i=1; i<=10; ++i))
do
	perl modify_matrix_for_CONISS.pl /NAS1/huangliang/Hi-C//zscored_and_correlation_matrix/endo/40kb/chr$i\.zScore.correlation.matrix  endo_chr$i\_matrix
	perl modify_matrix_for_CONISS.pl /NAS1/huangliang/Hi-C/zscored_and_correlation_matrix/shoot/40kb/chr$i\.zScore.correlation.matrix  shoot_chr$i\_matrix
done

Rscript CONISS.r

for ((i=1; i<=10; ++i))
do
	perl split_matrix_by_CONISS_result.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/endosperm/40kb/chr$i\.matrix.with_row_and_col_header  endo_chr$i\_clust_result   ./ endo_chr$i >> cluster_num
	perl split_matrix_by_CONISS_result.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/shoot/40kb/chr$i\.matrix.with_row_and_col_header   shoot_chr$i\_clust_result  ./ shoot_chr$i >>cluster_num
done

perl modify_matrix_for_PCA.pl endo_chr*part* shoot_chr*part*

sh PCA.sh



for ((i=1; i<=10; ++i))
do
 touch  endo_chr$i\_part1_modified.zScore.compartments endo_chr$i\_part2_modified.zScore.compartments endo_chr$i\_part3_modified.zScore.compartments endo_chr$i\_part4_modified.zScore.compartments endo_chr$i\_part5_modified.zScore.compartments endo_chr$i\_part6_modified.zScore.compartments endo_chr$i\_part7_modified.zScore.compartments endo_chr$i\_part8_modified.zScore.compartments endo_chr$i\_part9_modified.zScore.compartments endo_chr$i\_part10_modified.zScore.compartments endo_chr$i\_part11_modified.zScore.compartments endo_chr$i\_part12_modified.zScore.compartments endo_chr$i\_part13_modified.zScore.compartments endo_chr$i\_part14_modified.zScore.compartments endo_chr$i\_part15_modified.zScore.compartments
 touch  shoot_chr$i\_part1_modified.zScore.compartments shoot_chr$i\_part2_modified.zScore.compartments shoot_chr$i\_part3_modified.zScore.compartments shoot_chr$i\_part4_modified.zScore.compartments shoot_chr$i\_part5_modified.zScore.compartments shoot_chr$i\_part6_modified.zScore.compartments shoot_chr$i\_part7_modified.zScore.compartments shoot_chr$i\_part8_modified.zScore.compartments shoot_chr$i\_part9_modified.zScore.compartments shoot_chr$i\_part10_modified.zScore.compartments shoot_chr$i\_part11_modified.zScore.compartments shoot_chr$i\_part12_modified.zScore.compartments shoot_chr$i\_part13_modified.zScore.compartments shoot_chr$i\_part14_modified.zScore.compartments shoot_chr$i\_part15_modified.zScore.compartments 
done 


for((i=1; i<=10; ++i))
do
 cat  endo_chr$i\_part1_modified.zScore.compartments endo_chr$i\_part2_modified.zScore.compartments endo_chr$i\_part3_modified.zScore.compartments endo_chr$i\_part4_modified.zScore.compartments endo_chr$i\_part5_modified.zScore.compartments endo_chr$i\_part6_modified.zScore.compartments endo_chr$i\_part7_modified.zScore.compartments endo_chr$i\_part8_modified.zScore.compartments endo_chr$i\_part9_modified.zScore.compartments endo_chr$i\_part10_modified.zScore.compartments endo_chr$i\_part11_modified.zScore.compartments endo_chr$i\_part12_modified.zScore.compartments endo_chr$i\_part13_modified.zScore.compartments endo_chr$i\_part14_modified.zScore.compartments endo_chr$i\_part15_modified.zScore.compartments  | grep -v start > endo_chr$i\_A_B_part
 cat  shoot_chr$i\_part1_modified.zScore.compartments shoot_chr$i\_part2_modified.zScore.compartments shoot_chr$i\_part3_modified.zScore.compartments shoot_chr$i\_part4_modified.zScore.compartments shoot_chr$i\_part5_modified.zScore.compartments shoot_chr$i\_part6_modified.zScore.compartments shoot_chr$i\_part7_modified.zScore.compartments shoot_chr$i\_part8_modified.zScore.compartments shoot_chr$i\_part9_modified.zScore.compartments shoot_chr$i\_part10_modified.zScore.compartments shoot_chr$i\_part11_modified.zScore.compartments shoot_chr$i\_part12_modified.zScore.compartments shoot_chr$i\_part13_modified.zScore.compartments shoot_chr$i\_part14_modified.zScore.compartments shoot_chr$i\_part15_modified.zScore.compartments  | grep -v start > shoot_chr$i\_A_B_part
done 


for ((i=1; i<=10; ++i))
do 
perl ./assig_genome_to_four_part.pl  endo_chr$i\_A_B_part //NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/endosperm/40kb/chr$i\.zScore.compartments endo_loacal_A_B_compartment_for_chr$i
perl ./assig_genome_to_four_part.pl shoot_chr$i\_A_B_part /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/shoot/40kb/chr$i\.zScore.compartments shoot_local_A_B_compartment_for_chr$i
done

Rscript ./local_A_B_compartment_plot_CONISS_v2.r

