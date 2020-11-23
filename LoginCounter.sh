#!/bin/bash
# Counts the login from each users

for user in `ls /home`; 
do 
	echo -ne "$user\t"; last $user | wc -l; 
done


