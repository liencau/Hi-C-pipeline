#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1

mkdir combine_resolution
cd    combine_resolution

touch temp_file
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/500000/rep1_500000.matrix temp_file 500kb_endo_1d_genome_bin_repeatation_raw  4217
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/500000/rep1_500000.matrix  temp_file 500kb_shoot_1d_genome_bin_repeatation_raw 4217

perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/100000/rep1_100000.matrix temp_file 100kb_endo_1d_genome_bin_repeatation_raw  21068
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/100000/rep1_100000.matrix  temp_file 100kb_shoot_1d_genome_bin_repeatation_raw 21068

perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/40000/rep1_40000.matrix temp_file 40kb_endo_1d_genome_bin_repeatation_raw  52664
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/40000/rep1_40000.matrix  temp_file 40kb_shoot_1d_genome_bin_repeatation_raw 52664

perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/30000/rep1_30000.matrix temp_file 30kb_endo_1d_genome_bin_repeatation_raw  70217
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/30000/rep1_30000.matrix  temp_file 30kb_shoot_1d_genome_bin_repeatation_raw 70217


perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/25000/rep1_25000.matrix temp_file 25kb_endo_1d_genome_bin_repeatation_raw  84258
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/25000/rep1_25000.matrix  temp_file 25kb_shoot_1d_genome_bin_repeatation_raw 84258

perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/20000/rep1_20000.matrix temp_file 20kb_endo_1d_genome_bin_repeatation_raw  105324
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/20000/rep1_20000.matrix  temp_file 20kb_shoot_1d_genome_bin_repeatation_raw 105324

perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_endosperm_combined/hic_results/matrix/rep1/raw/10000/rep1_10000.matrix temp_file 10kb_endo_1d_genome_bin_repeatation_raw  210640
perl ../get_repeatation_for_1d_genome_bin_map.pl /NAS1/huangliang/Hi-C/HiC_Pro_result_MboI_contact_shoot_combined/hic_results/matrix/rep1/raw/10000/rep1_10000.matrix  temp_file 10kb_shoot_1d_genome_bin_repeatation_raw 210640

