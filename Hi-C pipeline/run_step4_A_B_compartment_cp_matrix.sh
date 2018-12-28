#!/bin/bash
 
#$ -cwd
#$ -j y
#
#$ -S /bin/bash
mkdir zscored_and_correlation_matrix
cd zscored_and_correlation_matrix
mkdir shoot  endo
cd shoot

mkdir 40kb
cd 40kb
for ((i=1; i<=10; ++i))
do
        perl /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/A_B_Comparment_lien/modify_matrix.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/shoot/40kb/chr$i\.matrix.zScore.matrix.gz chr$i\.matrix.zScore.matrix
        perl /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/A_B_Comparment_lien/modify_matrix.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/shoot/40kb/chr$i\.zScore.correlation.matrix.gz chr$i\.zScore.correlation.matrix
done



cd ../../


cd endo
mkdir 40kb
cd 40kb
for ((i=1; i<=10; ++i))
do
        perl /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/A_B_Comparment_lien/modify_matrix.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/endosperm/40kb/chr$i\.matrix.zScore.matrix.gz chr$i\.matrix.zScore.matrix
        perl /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/A_B_Comparment_lien/modify_matrix.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/endosperm/40kb/chr$i\.zScore.correlation.matrix.gz chr$i\.zScore.correlation.matrix
done

