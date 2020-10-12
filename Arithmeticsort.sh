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
