#!/bin/sh
if [ env = DEV ]
then
  echo "Dev initiated" 



elif [ env = UAT ]
then
   echo "Uat initiated"


elif [ env = PROD ]
then
   echo " Prod initiated"
   
else
echo "select an env"
fi
