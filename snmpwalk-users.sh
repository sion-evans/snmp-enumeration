#!/bin/bash
# Enumerating Windows Users

if [ -z "$1" ]
  then
    echo "Usage: $0 <host_list>"
	exit 1
fi

FILE=$1
while read LINE; do
	 echo "Running SNMP Walk on $LINE"
	 snmpwalk -c public -v1 $LINE 1.3.6.1.4.1.77.1.2.25 > "snmpwalk-users-$LINE.txt"
done < $FILE
