#!/bin/sh
if [ $1 = DEV ]
then
  echo "Dev initiated" 



elif [ $1 = UAT ]
then
   echo "Uat initiated"


elif [ $1 = PROD ]
then
   echo " Prod initiated"
   
else
echo "select an env"
fi
