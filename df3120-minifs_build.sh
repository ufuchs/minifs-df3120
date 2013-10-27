#!/bin/sh

export MINIFS_BOARD=df3120

#  Your product name should match with an adequate directory in
#+ 'conf/board.
#  In my case I had simply copied the original 'df3120'-directory
#+ and rename it to 'df3120-dev'.
#  Then I've made the adjustments, e.g. kernel config etc.

export PRODUCT=df3120-dev

echo
echo '==============================================================================='
echo 'Your product calls' 
echo '  '\"$PRODUCT\"
echo '==============================================================================='
echo

./minifs_build.sh $1

