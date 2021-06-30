#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
zcat TERRA_SNPs_imputed.vcf.gz | awk '$1=="Chr01"' - > Chr01.TERRA_SNPs_imputed.vcf
zcat TERRA_SNPs_imputed.vcf.gz |grep '#' - > TERRA_SNPs_imputed.vcf.head
cat TERRA_SNPs_imputed.vcf.head Chr01.TERRA_SNPs_imputed.vcf > Chr01.TERRA_SNPs_imputed.vcf.with_head
mv Chr01.TERRA_SNPs_imputed.vcf.with_head Chr01.TERRA_SNPs_imputed.vcf

/NAS7/home/shijunpeng/software/vcftools/bin/bin/vcftools --vcf ./Chr01.TERRA_SNPs_imputed.vcf --maf 0.05 --geno-r2 --ld-window 100000 --ld-window-bp 500000 --out Chr01.TERRA_SNPs_imputed
gzip Chr01.TERRA_SNPs_imputed.geno.ld
