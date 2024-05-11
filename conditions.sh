#!/bin/bash
ID=$(id -u)
if [ $ID -eq 0 ]
then
echo " you can proceed with the installation "
else
echo " please proceed with the root user "
exit
fi
package=$1
echo " we are installing the $package "
yum install $package -y > /dev/null
if [ $(echo $?) -eq 0 ]
then 
echo " $package was successfully installed "
else
echo " $package was not installed "
fi