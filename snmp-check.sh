#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: $0 <host_list>"
	exit 1
fi

FILE=$1
while read LINE; do
	 echo "Running snmp-check on $LINE"
	 snmp-check $LINE > "snmp-check-$LINE.txt"
done < $FILE
