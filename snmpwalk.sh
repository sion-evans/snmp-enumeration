#!/bin/bash
# Enumerating the Entire MIB Tree

if [ -z "$1" ]
  then
    echo "Usage: $0 <host_list>"
	exit 1
fi

FILE=$1
while read LINE; do
	 echo "Running SNMP Walk on $LINE"
	 snmpwalk -c public -v1 $LINE > "snmpwalk-$LINE.txt"
done < $FILE
