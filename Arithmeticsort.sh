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

echo "Array:"
ar[0]=${dict["C1"]}
ar[1]=${dict["C2"]}
ar[2]=${dict["C3"]}
ar[3]=${dict["C4"]}
echo ${!ar[@]}
echo ${ar[@]}

echo "Descending order:";
printf "%s\n" "${ar[@]}" | sort -nr

}
main
