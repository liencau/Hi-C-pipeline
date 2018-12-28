#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe make  1

/NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/HiC-Pro  -i shoot  -o HiC_Pro_result_MboI_contact_shoot -c config_maize_hichip_MboI_2_matix.txt   -s build_contact_maps -s ice_norm
/NAS7/home/caulien/software/HiC-Pro_2.8.1_devel/bin/HiC-Pro  -i shoot_combine -o HiC_Pro_result_MboI_contact_shoot_combined -c config_maize_hichip_MboI_2_matix.txt -s build_contact_maps -s ice_norm

