#!/bin/bash
    if [ $(id -u) -eq 0 ]
    then
    echo " proceed with the installation"
    else
    echo " please proceed with the root user "
    exit
    fi
status()
{
    if [ $1 -eq 0 ]
    then
    echo " $2 ....... installation was success "
    else
    echo " $2 ..... installation failed "
    fi
}
yum install git -y
status $? "git"
yum install mysql -y
status $? "mysql"

