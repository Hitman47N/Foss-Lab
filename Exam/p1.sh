#!/bin/bash
ros=0
res=0
for p in $(seq 2 2 1000);do
nos=0
exp=` expr $p / 3 ` 
for a in $(seq 2 1 $exp); do
e1=`expr $a \* 2`
e2=`expr $p - $e1`
e3=`expr $p \* $e2`
e4=`expr $p - $a`
e5=`expr $e4 \* 2`
fin=`expr $e3 % $e5`
if [ $fin -eq 0 ];
then
	nos=`expr $nos + 1`
	echo $nos
fi
done;
if [ $nos -gt $ros ];
then
	ros=$nos
	res=$p
fi
done;
echo "Maximum Perimeter is : $res"
echo "Real solutions: $ros"
echo "Number of Solutions is $nos"
#The number of solutions is maximized for p=840
