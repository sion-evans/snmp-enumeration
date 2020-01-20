#!/bin/bash
# Enumerating Open TCP Ports

if [ -z "$1" ]
  then
    echo "Usage: $0 <host_list>"
	exit 1
fi

FILE=$1
while read LINE; do
	 echo "Running SNMP Walk on $LINE"
	 snmpwalk -c public -v1 $LINE 1.3.6.1.2.1.6.13.1.3 > "snmpwalk-tcp-$LINE.txt"
done < $FILE
