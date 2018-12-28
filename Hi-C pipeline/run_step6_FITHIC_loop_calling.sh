#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1

mkdir FIT_HIC_for_loops_calling
cd FIT_HIC_for_loops_calling

#mkdir 40kb_shoot_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/40000/rep1_40000.matrix     -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/40kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/40000/rep1_40000_iced.matrix.biases -o 40kb_shoot_loops
#mkdir 40kb_endo_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/40000/rep1_40000.matrix -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/40kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/40000/rep1_40000_iced.matrix.biases -o 40kb_endo_loops

#mkdir 25kb_shoot_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/25000/rep1_25000.matrix     -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/25kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/25000/rep1_25000_iced.matrix.biases -o 25kb_shoot_loops
#mkdir 25kb_endo_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/25000/rep1_25000.matrix -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/25kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/25000/rep1_25000_iced.matrix.biases -o 25kb_endo_loops

#mkdir 20kb_shoot_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/20000/rep1_20000.matrix     -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/20kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/20000/rep1_20000_iced.matrix.biases -o 20kb_shoot_loops
#mkdir 20kb_endo_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/20000/rep1_20000.matrix -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/20kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/20000/rep1_20000_iced.matrix.biases -o 20kb_endo_loops

#mkdir 15kb_shoot_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/15000/rep1_15000.matrix     -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/15kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/15000/rep1_15000_iced.matrix.biases -o 15kb_shoot_loops
#mkdir 15kb_endo_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/15000/rep1_15000.matrix -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/15kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/15000/rep1_15000_iced.matrix.biases -o 15kb_endo_loops

#mkdir 10kb_shoot_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/10000/rep1_10000.matrix     -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/10kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/iced/10000/rep1_10000_iced.matrix.biases -o 10kb_shoot_loops
#mkdir 10kb_endo_loops
#python /NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/utils/hicpro2fithic.py -i /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/10000/rep1_10000.matrix -b /NAS8/huangliang/Hi-C/follow_work_for_combin_simple/10kb_bin_bed_info -s /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/iced/10000/rep1_10000_iced.matrix.biases -o 10kb_endo_loops


#/NAS7/home/zhxiangbo/software/R-3.2.3/bin/Rscript ../FIT_HIC.r
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/20kb_endo_loops/FIT_HIC
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/20kb_shoot_loops/FIT_HIC
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/10kb_endo_loops/FIT_HIC
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/10kb_shoot_loops/FIT_HIC
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/25kb_endo_loops/FIT_HIC
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/25kb_shoot_loops/FIT_HIC
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/40kb_endo_loops/FIT_HIC
perl ../get_significant_FIT_HIC_loops.pl /NAS1/huangliang/Hi-C/FIT_HIC_for_loops_calling/40kb_shoot_loops/FIT_HIC

