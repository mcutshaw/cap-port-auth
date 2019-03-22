#!/bin/sh
#Only use if curl and wget are not available
echo "Username:"
read AUTH_USERNAME
echo "Password:"
stty -echo
read AUTH_PASSWORD
stty echo
length=`expr ${#AUTH_USERNAME} + ${#AUTH_PASSWORD} + 55`
echo -e "POST /php/uid.php?vsys=1&rule=2 HTTP/1.1\r\nHost:$(hostname)\r\nUser-Agent: HTTPTool/1.0\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: "$length"\r\nConnection: close\r\n\r\ninputStr=&escapeUser=&preauthid=&user="$AUTH_USERNAME"&passwd="$AUTH_PASSWORD"&ok=Login" |  openssl 2>&1 s_client -quiet -connect captiveportal.ialab.dsu.edu:6082
