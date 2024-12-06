#!/usr/bin/env bash

# # Displays "Best School" 10 times using a while loop.
# #loops

# count=0
# # while [ $count -lt 10 ]; 
# # do
# #     echo "Best school"
# #     ((count++))
# #     echo "$count"
# # done
# # count=0
# echo "****************************************"
# until [ $count -eq 10 ];
# do
# echo "Best school"
# ((count++))
# echo "until $count"
# done
#***********************************8
# Displays numbers from 1 to 20 in addition to:
#   "bad luck from China" for the 4th iteration
#   "bad luck from Japan" for the 9th iteration
#   "bad luck from Italy" for the 17th loop iteration
count=1

for (( i=1; i<=20; i++ )); do
    case $count in
        4) 
            echo "number $count is a bad luck from China"
            ;;
        9) 
            echo "number $count is a bad luck from Japan"
            ;;
        17) 
            echo "number $count is a bad luck from Italy"
            ;;
        [1-3] | [5-8] | [10-16] | [18-20])
            echo "number: $count"
            ;;
    esac
    ((count++))
done