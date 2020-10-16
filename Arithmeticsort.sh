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

}
main
