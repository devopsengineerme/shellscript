person1=$1
person2=$2
echo " $person1:hi my name is $person1"
echo " $person2:hey common what a surprise , I am $person2"
Timestamp=$(date) 
echo " script started at : $Timestamp "
test=$(echo $?)
if[ $test -ne 0 ]
then
echo "check the script once"
exit 1
else
echo "success"
fi