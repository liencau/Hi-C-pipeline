#!/bin/bash
#
#$ -cwd
#$ -j y
#
#$ -S /bin/bash
#########################
#################### get iced matrix with header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr10.matrix 40 chr10.row_header chr10.matrix.with_header
cat chr10.row_header chr10.matrix.with_header > chr10.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr9.matrix 40 chr9.row_header chr9.matrix.with_header
cat chr9.row_header chr9.matrix.with_header > chr9.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr8.matrix 40 chr8.row_header chr8.matrix.with_header
cat chr8.row_header chr8.matrix.with_header > chr8.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr7.matrix 40 chr7.row_header chr7.matrix.with_header
cat chr7.row_header chr7.matrix.with_header > chr7.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr6.matrix 40 chr6.row_header chr6.matrix.with_header
cat chr6.row_header chr6.matrix.with_header > chr6.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr5.matrix 40 chr5.row_header chr5.matrix.with_header
cat chr5.row_header chr5.matrix.with_header > chr5.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr4.matrix 40 chr4.row_header chr4.matrix.with_header
cat chr4.row_header chr4.matrix.with_header > chr4.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr3.matrix 40 chr3.row_header chr3.matrix.with_header
cat chr3.row_header chr3.matrix.with_header > chr3.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr2.matrix 40 chr2.row_header chr2.matrix.with_header
cat chr2.row_header chr2.matrix.with_header > chr2.matrix.with_row_and_col_header
perl get_ice_matrix_with_header.pl /NAS8/huangliang/Hi-C_v2/follow_work_for_combine_simple/matrix_file/endosperm/40000/chr1.matrix 40 chr1.row_header chr1.matrix.with_header
cat chr1.row_header chr1.matrix.with_header > chr1.matrix.with_row_and_col_header
############################matrix2insulation
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr10.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr9.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr8.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr7.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr6.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr5.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr4.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr3.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr2.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
perl /NAS4/lien/Hi-C/scripts_dekkerlab/cworld-dekker-master/scripts/perl/matrix2insulation.pl -i chr1.matrix.with_row_and_col_header --is 500000 --ids 200000 --im mean --bmoe 3 --nt 0.1 -v
############################
