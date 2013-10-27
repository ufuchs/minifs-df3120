#!/bin/sh
export MINIFS_BOARD=df3120
#export PRODUCT=df3120-dev

echo
echo '==============================================================================='
echo 'Your product is' \"$PRODUCT\"
echo '==============================================================================='
echo

./minifs_build.sh

