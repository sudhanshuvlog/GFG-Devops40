#/usr/bin/bash

#users=$@
users=$(cat userdb.csv)
for i in $users
do
        if id $i &> /dev/null
        then
                echo "$i user already exists!"
        else
                useradd $i
                if [ 0 -eq $? ]
                then
                        echo "$i user is succesfully created!"
                else
                        echo "user creation failed, please reach out to admin!"
                fi
        fi
done