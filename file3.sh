person1=$1
person2=$2
echo " $person1:hi my name is $person1"
echo " $person2:hey common what a surprise , I am $person2"
Timestamp=$(date) 
echo " script started at : $Timestamp "
number=$3
if [number -gt 100]
then
echo " the given number is greater than 100"
else
echo " the given number is less than 100"
fi