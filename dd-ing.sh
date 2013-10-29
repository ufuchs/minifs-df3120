#!/bin/bash

# invoke it with :
# 'sudo ./dd-ing.sh'

SD_CARD=/dev/sdc1

umount $SD_CARD

PRODUCT=$(cat PRODUCT)

echo
echo '==============================================================================='
echo 'Your product calls' 
echo '  '\"$PRODUCT\"
echo '==============================================================================='
echo

dd if=build-$PRODUCT/minifs-full-ext.img of=$SD_CARD bs=512

