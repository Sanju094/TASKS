a=12
b=23
if [ $a -gt $b ]; then
 echo "a is greater"
elif [ $b -gt $a ]; then
 echo "b is greater"
else
 echo "both have same value"
fi
