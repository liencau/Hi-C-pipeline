#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
zcat TERRA_SNPs_imputed.vcf.gz | awk '$1=="Chr10"' - > Chr10.TERRA_SNPs_imputed.vcf
cat TERRA_SNPs_imputed.vcf.head Chr10.TERRA_SNPs_imputed.vcf > Chr10.TERRA_SNPs_imputed.vcf.with_head
mv Chr10.TERRA_SNPs_imputed.vcf.with_head Chr10.TERRA_SNPs_imputed.vcf

/NAS7/home/shijunpeng/software/vcftools/bin/bin/vcftools --vcf ./Chr10.TERRA_SNPs_imputed.vcf --maf 0.05 --geno-r2 --ld-window 100000 --ld-window-bp 500000 --out Chr10.TERRA_SNPs_imputed
gzip Chr10.TERRA_SNPs_imputed.geno.ld
