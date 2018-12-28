#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1

mkdir  TAD_file

mkdir  TAD_file/shoot
mkdir  TAD_file/shoot/20000/
mkdir  TAD_file/shoot/25000/
mkdir  TAD_file/shoot/30000/
mkdir  TAD_file/shoot/40000/
mkdir  TAD_file/shoot/100000/


mkdir TAD_file/endosperm
mkdir TAD_file/endosperm/20000/
mkdir TAD_file/endosperm/25000/
mkdir TAD_file/endosperm/30000/
mkdir TAD_file/endosperm/40000/
mkdir TAD_file/endosperm/100000/


/NAS7/home/zhxiangbo/software/R-3.2.3/bin/Rscript TopDom_TAD.r
