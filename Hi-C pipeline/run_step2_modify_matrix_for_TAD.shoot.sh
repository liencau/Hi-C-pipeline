#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1
cd /NAS1/huangliang/Hi-C/matrix_file
cd shoot
cd 1000000
mv chr10.matrix chr10.matrix_temp
mv chr1.matrix chr1.matrix_temp
mv chr2.matrix chr2.matrix_temp
mv chr3.matrix chr3.matrix_temp
mv chr4.matrix chr4.matrix_temp
mv chr5.matrix chr5.matrix_temp
mv chr6.matrix chr6.matrix_temp
mv chr7.matrix chr7.matrix_temp
mv chr8.matrix chr8.matrix_temp
mv chr9.matrix chr9.matrix_temp
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr10.matrix_temp chr10.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr1.matrix_temp chr1.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr2.matrix_temp chr2.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr3.matrix_temp chr3.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr4.matrix_temp chr4.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr5.matrix_temp chr5.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr6.matrix_temp chr6.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr7.matrix_temp chr7.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr8.matrix_temp chr8.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr9.matrix_temp chr9.matrix
rm *temp

cd /NAS1/huangliang/Hi-C/matrix_file
cd shoot
cd 500000
mv chr10.matrix chr10.matrix_temp
mv chr1.matrix chr1.matrix_temp
mv chr2.matrix chr2.matrix_temp
mv chr3.matrix chr3.matrix_temp
mv chr4.matrix chr4.matrix_temp
mv chr5.matrix chr5.matrix_temp
mv chr6.matrix chr6.matrix_temp
mv chr7.matrix chr7.matrix_temp
mv chr8.matrix chr8.matrix_temp
mv chr9.matrix chr9.matrix_temp
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr10.matrix_temp chr10.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr1.matrix_temp chr1.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr2.matrix_temp chr2.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr3.matrix_temp chr3.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr4.matrix_temp chr4.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr5.matrix_temp chr5.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr6.matrix_temp chr6.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr7.matrix_temp chr7.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr8.matrix_temp chr8.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr9.matrix_temp chr9.matrix
rm *temp


cd /NAS1/huangliang/Hi-C/matrix_file 
cd shoot
cd 100000
mv chr10.matrix chr10.matrix_temp
mv chr1.matrix chr1.matrix_temp
mv chr2.matrix chr2.matrix_temp
mv chr3.matrix chr3.matrix_temp
mv chr4.matrix chr4.matrix_temp
mv chr5.matrix chr5.matrix_temp
mv chr6.matrix chr6.matrix_temp
mv chr7.matrix chr7.matrix_temp
mv chr8.matrix chr8.matrix_temp
mv chr9.matrix chr9.matrix_temp
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr10.matrix_temp chr10.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr1.matrix_temp chr1.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr2.matrix_temp chr2.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr3.matrix_temp chr3.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr4.matrix_temp chr4.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr5.matrix_temp chr5.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr6.matrix_temp chr6.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr7.matrix_temp chr7.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr8.matrix_temp chr8.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr9.matrix_temp chr9.matrix
rm *temp


cd /NAS1/huangliang/Hi-C/matrix_file 
cd shoot
cd 40000
mv chr10.matrix chr10.matrix_temp
mv chr1.matrix chr1.matrix_temp
mv chr2.matrix chr2.matrix_temp
mv chr3.matrix chr3.matrix_temp
mv chr4.matrix chr4.matrix_temp
mv chr5.matrix chr5.matrix_temp
mv chr6.matrix chr6.matrix_temp
mv chr7.matrix chr7.matrix_temp
mv chr8.matrix chr8.matrix_temp
mv chr9.matrix chr9.matrix_temp
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr10.matrix_temp chr10.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr1.matrix_temp chr1.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr2.matrix_temp chr2.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr3.matrix_temp chr3.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr4.matrix_temp chr4.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr5.matrix_temp chr5.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr6.matrix_temp chr6.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr7.matrix_temp chr7.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr8.matrix_temp chr8.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr9.matrix_temp chr9.matrix
rm *temp

cd /NAS1/huangliang/Hi-C/matrix_file 
cd shoot
cd 30000
mv chr10.matrix chr10.matrix_temp
mv chr1.matrix chr1.matrix_temp
mv chr2.matrix chr2.matrix_temp
mv chr3.matrix chr3.matrix_temp
mv chr4.matrix chr4.matrix_temp
mv chr5.matrix chr5.matrix_temp
mv chr6.matrix chr6.matrix_temp
mv chr7.matrix chr7.matrix_temp
mv chr8.matrix chr8.matrix_temp
mv chr9.matrix chr9.matrix_temp
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr10.matrix_temp chr10.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr1.matrix_temp chr1.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr2.matrix_temp chr2.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr3.matrix_temp chr3.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr4.matrix_temp chr4.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr5.matrix_temp chr5.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr6.matrix_temp chr6.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr7.matrix_temp chr7.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr8.matrix_temp chr8.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr9.matrix_temp chr9.matrix
rm *temp

cd /NAS1/huangliang/Hi-C/matrix_file 
cd shoot
cd 25000
mv chr10.matrix chr10.matrix_temp
mv chr1.matrix chr1.matrix_temp
mv chr2.matrix chr2.matrix_temp
mv chr3.matrix chr3.matrix_temp
mv chr4.matrix chr4.matrix_temp
mv chr5.matrix chr5.matrix_temp
mv chr6.matrix chr6.matrix_temp
mv chr7.matrix chr7.matrix_temp
mv chr8.matrix chr8.matrix_temp
mv chr9.matrix chr9.matrix_temp
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr10.matrix_temp chr10.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr1.matrix_temp chr1.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr2.matrix_temp chr2.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr3.matrix_temp chr3.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr4.matrix_temp chr4.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr5.matrix_temp chr5.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr6.matrix_temp chr6.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr7.matrix_temp chr7.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr8.matrix_temp chr8.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr9.matrix_temp chr9.matrix
rm *temp

cd /NAS1/huangliang/Hi-C/matrix_file 
cd shoot
cd 20000
mv chr10.matrix chr10.matrix_temp
mv chr1.matrix chr1.matrix_temp
mv chr2.matrix chr2.matrix_temp
mv chr3.matrix chr3.matrix_temp
mv chr4.matrix chr4.matrix_temp
mv chr5.matrix chr5.matrix_temp
mv chr6.matrix chr6.matrix_temp
mv chr7.matrix chr7.matrix_temp
mv chr8.matrix chr8.matrix_temp
mv chr9.matrix chr9.matrix_temp
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr10.matrix_temp chr10.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr1.matrix_temp chr1.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr2.matrix_temp chr2.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr3.matrix_temp chr3.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr4.matrix_temp chr4.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr5.matrix_temp chr5.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr6.matrix_temp chr6.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr7.matrix_temp chr7.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr8.matrix_temp chr8.matrix
perl /NAS1/huangliang/Hi-C/modify_matrix_file.pl chr9.matrix_temp chr9.matrix
rm *temp

