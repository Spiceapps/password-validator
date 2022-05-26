read -p "please enter password:" password
count=`echo ${#password}`
if [[ $count -lt 8 ]];then
    echo "Password length should be at least 8 charactore"
exit 1;
fi
#echo $password | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]" | grep "[@#$%^&*]"
#echo $password | grep [A-Za-z][0-9] | grep "[!@#$%^&*()]"
if [[ ${#password} -ge 6 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]* && "$password" == *[0-9]* ]]; then 
    echo "password is good"  
    exit 0
else 
    echo "password is bad"
    exit 1
fi