echo " This script is for calculating marks"
read -p " Enter the marks: " marks
if [ ${marks} -lt 33 ]; then
    echo " Fail, you got ${marks}"
elif [ ${marks} -lt 50 ]; then
    echo " Third class , your got ${marks}"
elif [ ${marks} -lt 60 ]; then
    echo " Second class , your got ${marks}"
elif [ ${marks} -lt 70 ]; then
    echo " First class , your got ${marks}"
else
    echo " You got Distinction, you got ${marks}"
fi

echo "----------------------------"

