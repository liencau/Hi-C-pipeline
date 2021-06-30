#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1
######################

#zcat Chr10.TERRA_SNPs_imputed.geno.ld.gz | sed '1d' - | awk '{print $1"\t"$2"\t"$3"\t"$5"\t"($3-$2)}' - | bedtools intersect -a - -b /NAS8/lien/Hi-C/sorghum/Hic_pro_result_bendi/futher_analysis_for_sorghum_confirm/most_TAD_file_list_tiny/sorghum_20kb_most_TAD_file.Chr -wo | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5}' - | uniq -c - | awk '$1>=2' - | awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$1}' - > Chr10.TERRA_SNPs_imputed.geno.ld.between_tad

#zcat Chr10.TERRA_SNPs_imputed.geno.ld.gz | sed '1d' - | awk '{print $1"\t"$2"\t"$3"\t"$5"\t"($3-$2)}' - | bedtools intersect -a - -b /NAS8/lien/Hi-C/sorghum/Hic_pro_result_bendi/futher_analysis_for_sorghum_confirm/most_TAD_file_list_tiny/sorghum_20kb_most_TAD_file.Chr -wo | awk '$5==$10' - | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5}' - | uniq -c - | awk '$1==1' - | awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$1}' - > Chr10.TERRA_SNPs_imputed.geno.ld.inner_tad

wc -l Chr10.TERRA_SNPs_imputed.geno.ld.between_tad > summary.Chr10.txt
wc -l Chr10.TERRA_SNPs_imputed.geno.ld.inner_tad >> summary.Chr10.txt
gzip Chr10.TERRA_SNPs_imputed.geno.ld.between_tad
gzip Chr10.TERRA_SNPs_imputed.geno.ld.inner_tad

