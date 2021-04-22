#!/bin/bash
#
#$ -cwd
#$ -j y
#
#$ -S /bin/bash
#########################
###################
#mkdir IS_by_cwork
#mkdir ./IS_by_cwork/mo17_en/
cd ./IS_by_cwork/mo17_en/
###############
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/10.matrix 40 10.row_header 10.matrix.with_header
#cat 10.row_header 10.matrix.with_header > 10.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/9.matrix 40 9.row_header 9.matrix.with_header
#cat 9.row_header 9.matrix.with_header > 9.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/8.matrix 40 8.row_header 8.matrix.with_header
#cat 8.row_header 8.matrix.with_header > 8.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/7.matrix 40 7.row_header 7.matrix.with_header
#cat 7.row_header 7.matrix.with_header > 7.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/6.matrix 40 6.row_header 6.matrix.with_header
#cat 6.row_header 6.matrix.with_header > 6.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/5.matrix 40 5.row_header 5.matrix.with_header
#cat 5.row_header 5.matrix.with_header > 5.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/4.matrix 40 4.row_header 4.matrix.with_header
#cat 4.row_header 4.matrix.with_header > 4.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/3.matrix 40 3.row_header 3.matrix.with_header
#cat 3.row_header 3.matrix.with_header > 3.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/2.matrix 40 2.row_header 2.matrix.with_header
#cat 2.row_header 2.matrix.with_header > 2.matrix.with_row_and_col_header
#perl ../get_ice_matrix_with_header.pl /NAS8/lien/Hi-C/maize_mo17/futher_analysis_for_Mo17_en/matrix_file/mo17_en/40000/1.matrix 40 1.row_header 1.matrix.with_header
#cat 1.row_header 1.matrix.with_header > 1.matrix.with_row_and_col_header
############################matrix2insulation
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 10.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 9.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 8.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 7.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 6.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 5.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 4.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 3.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 2.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i 1.matrix.with_row_and_col_header --is 400000 --ids 200000 --im mean --bmoe 0 --nt 0 -v
