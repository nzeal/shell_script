#! /bin/bash

# Echo command 
echo Hello world!

# Variables
# Upper case by convention 
# Letters, numbers, underscores

NAME="Eli"

#echo "My name is $NAME"
# Or it can be written like 
#echo "My name is ${NAME}"


# USER INPUT 
#read -p "Enter your name: " NAME
#echo "Hello $NAME, nice to meet you!"

# Conditional 
#if [ "$NAME" == "Nitin" ]
#then 
# echo "Your name is Nitin"
#fi

# ---If-Else----------
# if [ "$NAME" == "Nitin" ]
# then
#  echo "Your name is Nitin"
# else
#  echo "Your name is Not Nitin"
# fi

# Else-IF (elif)

if [ "$NAME" == "Nitin" ]
then
 echo "Your name is Nitin"
elif [ "$NAME" == "Jock" ]
then
 echo "Your name is Jock"
else
 echo "Your name is not Nitin or Jack"
fi























