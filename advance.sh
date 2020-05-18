#-------Advance bash usage 

#!/bin/bash

#while read var1 var2 
#do 
#    echo $var1 $var2
#done 


#for i in one two "three four"
#do 
#  echo "_-_-_-_-_-$i-_-_-_-"
#done

# c like for loop

#for (( i=0 ; i<5 ; i++))
#do 
#    echo $i
#done 

select choice in one two "three four"
do 
    echo "$REPLY : $choice"
done
