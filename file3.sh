person1=$1
person2=$2
echo " hi my name is $person1"
echo "  hey common what a surprise , I am $person2"
Timestamp=$(date) 
echo " script started at : $(Timestamp) "
if($? -ne 0)
echo "check the script once"
else
echo "success"
fi