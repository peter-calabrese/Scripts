#!/bin/bash

printf "Converting .kt file to .jar\n--------------------------------\n"

#takes passed in file path
filePath=$1 
#cuts the ' as well as the .kt at the end of the file path. 
name=$(echo "$filePath" | tr =d "'" | cut -f 1 -d '.')

#converts the .kt file to a .jar and saves it in path of file
kotlinc $name.kt -include-runtime -d $name.jar
java -jar $name.jar #executes the .jar file 

echo
read -n 1 -s -r -p "Press any key to continue..."
echo

#cleans up and removes genrated .jar
rm -v $name.jar