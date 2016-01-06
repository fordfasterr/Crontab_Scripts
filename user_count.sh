bash-3.00# cat /var/tmp/root_scripts/users.sh
#!/bin/bash

#This script will count the number of logged in users and
#email the user specified if the count is 10 or greater.

users=`w|grep pts|wc -l`

echo `date > /var/tmp/root_scripts/details.txt`
echo "10 or more users are logged in" >> /var/tmp/root_scripts/details.txt
echo `w >> /var/tmp/root_scripts/details.txt`

if [ $users -ge 10 ]; then
        sendmail -v your_email@somewhere.com < /var/tmp/root_scripts/details.txt
fi
