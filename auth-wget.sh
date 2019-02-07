#!/bin/sh
read -p "Username: " AUTH_USERNAME
stty -echo
read -p "Password: " AUTH_PASSWORD
stty echo
wget -qO- 'https://captiveportal.ialab.dsu.edu:6082/php/uid.php?vsys=1&rule=2' --post-data='inputStr=&escapeUser=&preauthid=&user='$AUTH_USERNAME'&passwd='$AUTH_PASSWORD'&ok=Login'
