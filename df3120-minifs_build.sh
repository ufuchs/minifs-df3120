#!/bin/sh

export MINIFS_BOARD=df3120

#  Your product name should match with an adequate directory in
#+ 'conf/board.
#  In my case I had simply copied the original 'df3120'-directory
#+ and rename it to 'df3120-dev'.
#  Then I've made the adjustments, e.g. kernel config etc.

export PRODUCT=$(cat PRODUCT)   #  So adjust the one-line content of the 
                                #+ PRODUCT file to your needs.

echo
echo '==============================================================================='
echo 'Your product calls' 
echo '  '\"$PRODUCT\"
echo '==============================================================================='
echo

# rm -rf ./download/sdlweather.bz2

./minifs_build.sh $1

