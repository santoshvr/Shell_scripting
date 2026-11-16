echo " This program is to check even or odd , based on parameter passed "
echo " Enter the number: "
read number
echo " Entered number is $number "
if [ $((number % 2)) -eq 0 ]
then
    echo "$number is even"
else
    echo "$number is odd"
fi
