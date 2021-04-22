#!/bin/bash
#
#$-cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1

#mkdir IS_score
cd IS_score

perl get_IS_score.pl /NAS8/lien/Hi-C/coix/HiC_Pro_result_coix_confirm/hic_results/matrix/rep1/iced/20000/rep1_20000_iced.matrix ../chro_bin_num/20kb_chro_bin_num ../bin_bed_info/20kb_bin_bed_info coix_20kb_IS_score

perl get_IS_score.pl /NAS8/lien/Hi-C/coix/HiC_Pro_result_coix_confirm/hic_results/matrix/rep1/iced/40000/rep1_40000_iced.matrix  ../chro_bin_num/40kb_chro_bin_num ../bin_bed_info/40kb_bin_bed_info coix_40kb_IS_score

