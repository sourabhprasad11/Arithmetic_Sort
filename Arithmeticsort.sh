#! /bin/bash

echo "Welcome to the Arithmetic and Sorting Computation"

read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c


function compute(){

addmult=$(( $a+$b*$c ));
echo "the value of Arithmetic Calculation-1: $addmult"

multiadd=$(( $a*$b+$c ));
echo "The Value of Arithmetic Calculation-2: $multiadd";

add_div=$(($c+$a/$b))
echo "The Value of Arithmetic Calculation-3: $add_div";

diviadd=$(( $a%$b+$c ));
echo "The Value of Arithmetic Calculation-4: $diviadd";

}

function main(){

	compute
declare -A dict
dict["C1"]=$addmult
dict["C2"]=$multiadd
dict["C3"]=$add_div
dict["C4"]=$diviadd

echo "The Keys-Values of the dict: ";
echo "${!dict[@]}"
echo "${dict[@]}";
}
main

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
		if [ ${ar[j]} -gt ${ar[$((j+1))]} ]; then
		temp=${ar[j]}
		ar[$j]=${ar[$((j+1))]}
		ar[$((j+1))]=$temp

		fi
	done

done

echo "Ascending order: "
echo ${ar[@]}


