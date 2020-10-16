#! /bin/bash

echo "Welcome to the Arithmetic and Sorting Computation"

read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c

function compute(){

addmult=$(( $a+$b*$c ));
echo "the value of Arithmetic Calculation: $addmult"

}

function main(){
   compute

}
main
