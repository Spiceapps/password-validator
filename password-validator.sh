read -p "Please enter password:" password   #User inputs password

if [ "${#password}" -ge 10 ] &&             #Check for length
   [[ $password == *[[:lower:]]* ]] &&      #check lower case
   [[ $password == *[[:upper:]]* ]] &&      #check uppercase
   [[ $password == *[!@\#$%^\&*()]* ]]      #check special characters
then
    echo "$(tput setaf 2)Good Password"
    exit 0
else
    echo "$(tput setaf 1)Password Does not fulfill requirements"
    exit 1
fi