#!/bin/bash
#
#$ -cwd
#$ -j y
#
#$ -S /bin/bash

for ((i=1; i<=10; ++i))
do
	perl split_matrix_by_CONISS_result.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/endosperm/40kb/chr$i\.matrix.with_row_and_col_header  endo_chr$i\_clust_result   ./ endo_chr$i >> cluster_num
	perl split_matrix_by_CONISS_result.pl /NAS4/lien/Hi-C/ICE_matrix_file_for_each_chr_q20/shoot/40kb/chr$i\.matrix.with_row_and_col_header   shoot_chr$i\_clust_result  ./ shoot_chr$i >>cluster_num
done

perl modify_matrix_for_PCA.pl endo_chr*part* shoot_chr*part*

