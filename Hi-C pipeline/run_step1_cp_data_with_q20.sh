#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make 1
mkdir endosperm endosperm_combine
mkdir endosperm/rep1 endosperm/rep2
mkdir endosperm_combine/rep1

perl remove_less_quality_pairs.pl /NAS7/home/caulien/Hi-C/endosperm/HiC_Pro_result_MboI_contact_combined/hic_results/data/rep1/rep1_allValidPairs endosperm_combine/rep1/rep1_allValidPairs
perl remove_less_quality_pairs.pl /NAS7/home/caulien/Hi-C/endosperm/HiC_Pro_result_MboI_contact_and_ice_norm_for_resolution_and_repeatation/hic_results/data/rep1/rep1_allValidPairs endosperm/rep1/rep1_allValidPairs
perl remove_less_quality_pairs.pl /NAS7/home/caulien/Hi-C/endosperm/HiC_Pro_result_MboI_contact_and_ice_norm_for_resolution_and_repeatation/hic_results/data/rep2/rep2_allValidPairs endosperm/rep2/rep2_allValidPairs

mkdir shoot shoot_combine
mkdir shoot/rep1 shoot/rep2
mkdir endosperm_combine/rep1

perl remove_less_quality_pairs.pl /NAS6/lien/Hi-C/HiC_Pro_result_MboI_contact_combined/hic_results/data/rep1/rep1_allValidPairs shoot_combine/rep1/rep1_allValidPairs
perl remove_less_quality_pairs.pl /NAS6/lien/Hi-C/HiC_Pro_result_MboI_contact_and_ice_norm_for_resolution_and_repeatation/hic_results/data/rep1/rep1_allValidPairs shoot/rep1/rep1_allValidPairs
perl remove_less_quality_pairs.pl /NAS6/lien/Hi-C/HiC_Pro_result_MboI_contact_and_ice_norm_for_resolution_and_repeatation/hic_results/data/rep2/rep2_allValidPairs shoot/rep2/rep2_allValidPairs

cd  shoot/rep1
ln -s rep1_allValidPairs rep1_all.validPairs
cd ../rep2
ln -s rep2_allValidPairs rep2_all.validPairs
cd ../../shoot_combine/rep1
ln -s rep1_allValidPairs rep1_all.validPairs

cd  ../../endosperm/rep1
ln -s rep1_allValidPairs rep1_all.validPairs
cd ../rep2
ln -s rep2_allValidPairs rep2_all.validPairs
cd ../../endosperm_combine/rep1
ln -s rep1_allValidPairs rep1_all.validPairs

