#!/bin/bash
# Enumerating Installed Software

if [ -z "$1" ]
  then
    echo "Usage: $0 <host_list>"
	exit 1
fi

FILE=$1
while read LINE; do
	 echo "Running SNMP Walk on $LINE"
	 snmpwalk -c public -v1 $LINE 1.3.6.1.2.1.25.6.3.1.2 > "snmpwalk-software-$LINE.txt"
done < $FILE
