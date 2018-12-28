#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1

mkdir matrix_file
mkdir matrix_file/shoot/
mkdir matrix_file/endosperm/
mkdir matrix_file/shoot/20000
mkdir matrix_file/shoot/25000
mkdir matrix_file/shoot/30000
mkdir matrix_file/shoot/40000
mkdir matrix_file/shoot/100000
mkdir matrix_file/shoot/500000
mkdir matrix_file/shoot/1000000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/20000/rep1_20000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/20kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/20kb_bin_bed_info  matrix_file/shoot/20000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/25000/rep1_25000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/25kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/25kb_bin_bed_info  matrix_file/shoot/25000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/30000/rep1_30000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/30kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/30kb_bin_bed_info  matrix_file/shoot/30000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/40000/rep1_40000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/40kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/40kb_bin_bed_info  matrix_file/shoot/40000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/100000/rep1_100000_iced.matrix /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/100kb_chro_bin_num /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/100kb_bin_bed_info matrix_file/shoot/100000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/500000/rep1_500000_iced.matrix /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/500kb_chro_bin_num /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/500kb_bin_bed_info matrix_file/shoot/500000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/1000000/rep1_1000000_iced.matrix /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/1Mb_chro_bin_num /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/1Mb_bin_bed_info matrix_file/shoot/1000000

mkdir matrix_file/endosperm/20000
mkdir matrix_file/endosperm/25000
mkdir matrix_file/endosperm/30000
mkdir matrix_file/endosperm/40000
mkdir matrix_file/endosperm/100000
mkdir matrix_file/endosperm/500000
mkdir matrix_file/endosperm/1000000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/20000/rep1_20000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/20kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/20kb_bin_bed_info  matrix_file/endosperm/20000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/25000/rep1_25000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/25kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/25kb_bin_bed_info  matrix_file/endosperm/25000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/30000/rep1_30000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/30kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/30kb_bin_bed_info  matrix_file/endosperm/30000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/40000/rep1_40000_iced.matrix  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/40kb_chro_bin_num  /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/40kb_bin_bed_info  matrix_file/endosperm/40000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/100000/rep1_100000_iced.matrix /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/100kb_chro_bin_num /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/100kb_bin_bed_info matrix_file/endosperm/100000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/500000/rep1_500000_iced.matrix /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/500kb_chro_bin_num /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/500kb_bin_bed_info matrix_file/endosperm/500000
perl generate_matrix_file_for_Topdom.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/1000000/rep1_1000000_iced.matrix /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/chro_bin_num/1Mb_chro_bin_num /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/bin_bed_info/1Mb_bin_bed_info matrix_file/endosperm/1000000
