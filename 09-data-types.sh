echo " To perform arithmatic operations"
var1=10
var2=20
sum="$(($var1+$var2))"
echo " The sum is : $sum"

declare -i COUNT=5
COUNT=COUNT+1
echo "The count value is : $COUNT"


#Arrays, index to get the fruit name
FRUITS=("Apple" "Banana" "Grapes")
echo " The fruits are ${FRUITS[@]}"
#0th index value
echo " The fruits are ${FRUITS[0]}"
#1st index
echo " The fruits are ${FRUITS[1]}"
echo "All fruits: ${FRUITS[@]}"
