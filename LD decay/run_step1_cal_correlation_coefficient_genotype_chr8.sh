#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
zcat TERRA_SNPs_imputed.vcf.gz | awk '$1=="Chr08"' - > Chr08.TERRA_SNPs_imputed.vcf
cat TERRA_SNPs_imputed.vcf.head Chr08.TERRA_SNPs_imputed.vcf > Chr08.TERRA_SNPs_imputed.vcf.with_head
mv Chr08.TERRA_SNPs_imputed.vcf.with_head Chr08.TERRA_SNPs_imputed.vcf

/NAS7/home/shijunpeng/software/vcftools/bin/bin/vcftools --vcf ./Chr08.TERRA_SNPs_imputed.vcf --maf 0.05 --geno-r2 --ld-window 100000 --ld-window-bp 500000 --out Chr08.TERRA_SNPs_imputed
gzip Chr08.TERRA_SNPs_imputed.geno.ld
