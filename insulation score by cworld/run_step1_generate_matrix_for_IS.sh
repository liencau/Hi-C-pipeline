#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1


mkdir matrix_file
mkdir matrix_file/mo17_en/
mkdir matrix_file/mo17_en/20000
mkdir matrix_file/mo17_en/40000
mkdir matrix_file/mo17_en/100000
perl generate_matrix_file_for_Topdom.pl /NAS8/lien/Hi-C/maize_mo17/HiC_pro_result_Mo17_merge/hic_results/matrix/rep1/iced/20000/rep1_20000_iced.matrix  ./chro_bin_num/20kb_chro_bin_num  ./bin_bed_info/20kb_bin_bed_info  matrix_file/mo17_en/20000
perl generate_matrix_file_for_Topdom.pl /NAS8/lien/Hi-C/maize_mo17/HiC_pro_result_Mo17_merge/hic_results/matrix/rep1/iced/40000/rep1_40000_iced.matrix  ./chro_bin_num/40kb_chro_bin_num  ./bin_bed_info/40kb_bin_bed_info  matrix_file/mo17_en/40000
perl generate_matrix_file_for_Topdom.pl /NAS8/lien/Hi-C/maize_mo17/HiC_pro_result_Mo17_merge/hic_results/matrix/rep1/iced/100000/rep1_100000_iced.matrix ./chro_bin_num/100kb_chro_bin_num ./bin_bed_info/100kb_bin_bed_info matrix_file/mo17_en/100000

