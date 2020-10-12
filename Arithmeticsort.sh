#! /bin/bash

echo "Welcome to the Arithmetic and Sorting Computation"

read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c

uc2=$(( $a+$b*$c ));
echo "the value of UC2: $uc2"

uc3=$(( $a*$b+$c ));
echo "The Value of UC3: $uc3";

uc4=$(($c+$a/$b))
echo "The Value of UC4: $uc4";

uc5=$(( $a%$b+$c ));
echo "The Value of UC5: $uc5";

declare -A dict
dict["UC2"]=$uc2
dict["UC3"]=$uc3
dict["UC4"]=$uc4
dict["UC5"]=$uc5

echo "The Keys-Values of the dict: ";
echo "${!dict[@]}"
echo "${dict[@]}";

echo "Array:"
ar[0]=${dict["UC2"]}
ar[1]=${dict["UC3"]}
ar[2]=${dict["UC4"]}
ar[3]=${dict["UC5"]}

echo ${!ar[@]}
echo ${ar[@]}

for((i=0;i<4;i++))
do
	for((j=0;j<4-i-1;j++))
	do
		if [ ${ar[j]} -lt ${ar[$((j+1))]} ]; then
		temp=${ar[j]}
		ar[$j]=${ar[$((j+1))]}
		ar[$((j+1))]=$temp

		fi
	done

done

echo "Descending order: "
echo ${ar[@]}
