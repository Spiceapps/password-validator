#echo "Password: $1" 
#need to add capabiity to read password from file
password=$1

goodpassword=3

if [ "${#password}" -ge 10 ]; then #Check for length
    echo "passed length"
    goodpassword=1
    else
         echo "$(tput setaf 1)Weak Password! It should have at least 10 characters."
         exit 1
fi

if [[ $password =~ [[:lower:]] ]]; then  #check lower case    
    echo "passed lower case"   
    goodpassword=1
    else 
    echo "$(tput setaf 1)Weak Password! It should include at least 1 lower case character."
    exit 1
fi

if [[ $password =~ [[:upper:]] ]]; then #check uppercase
          echo "passed upper case"
          goodpassword=1
    else
    echo "$(tput setaf 1)Weak Password! It should include at least 1 upper case character."
    exit 1
fi      

if [[ $password =~ [!@\#$%^\&*()] ]]; then #check special characters
    echo "passed special case"
    goodpassword=1
    else
    echo "$(tput setaf 1)Weak Password! It should include at least 1 special character."
    exit 1
fi   

if [[ "$goodpassword" = 1 ]]; then  #check the goodpassword variable to determine exit code
    echo "$(tput setaf 2)Good Password"
    exit 0
else 
    exit 1
fi