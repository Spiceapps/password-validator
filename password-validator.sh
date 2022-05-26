read -p "Please enter password:" password   #User inputs password

if [ "${#password}" -ge 10 ] &&             #Check for length
   [[ $password == *[[:lower:]]* ]] &&      #check lower case
   [[ $password == *[[:upper:]]* ]] &&      #check uppercase
   [[ $password == *[!@\#$%^\&*()]* ]]      #check special characters
then
    echo 'good'
    exit 0
else
    echo 'not good'
    exit 1
fi