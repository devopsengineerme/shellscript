#!/bin/bash
# just checking the sysntsx of case command in shell script
a=$1
b=$2
#################################################
echo " a is for addition"
echo " b is for subtraction "
echo " c is for division"
echo " * is for no option"
echo "select an option " $option
read option 
case $option in 
a) sum=$(($a+$b))
    echo " the sum of given two numbers is $sum " ;;
b) sub=$(($a-$b)) 
    echo " the subtraction of given two numbers is $sub " ;;
c) div=$(($a/$b)) 
    echo " the devision of given two numbers is $div " ;;
*) echo " select appropriate option" ;;
esac