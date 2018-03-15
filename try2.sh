#!/bin/sh
read -p "Username: " AUTH_USERNAME
stty -echo
read -p "Password: " AUTH_PASSWORD
stty echo
curl 'https://captiveportal.ialab.dsu.edu:6082/php/uid.php?vsys=1&rule=2' -d 'inputStr=&escapeUser=&preauthid=&user=USERNAME&passwd=PASSWORD&ok=Login'
