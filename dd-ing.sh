#!/bin/bash

# invoke it with :
# 'sudo ./dd-ing.sh'

SD_CARD=/dev/sdc1

umount $SD_CARD

PRODUCT=$(cat CURRENT_PRODUCT_LINE)

echo
echo '==============================================================================='
echo 'Your current product calls' 
echo '  '\"$PRODUCT\"
echo '==============================================================================='
echo

dd if=build-$PRODUCT/minifs-full-ext.img of=$SD_CARD bs=512

