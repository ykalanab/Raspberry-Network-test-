#!/bin/sh
ping -c 1 10.101.1.15 > /dev/null 2>&1
ping=$? 
	echo ${ping}  
if [ ${ping} -eq "1" ] || [ ${ping} -eq "2" ]
	then
		printf '%s %s\n' "$(date)" "Network Down"
		sudo ip link set ens33 down && sudo ip link set ens33 up	
	else
		printf '%s %s\n' "$(date)" "Network Up"
fi
 