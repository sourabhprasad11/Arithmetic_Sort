#! /bin/bash

echo "Welcome to the Arithmetic and Sorting Computation"

read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c

uc1=$(( $a+$b*$c ));
echo "the value of UC1: $uc1"
