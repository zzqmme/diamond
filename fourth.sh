#!/bin/bash

if [ "$#" -ne "1" ]; then
	echo "ERROR: Invalid number of arguments"
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "ERROR: Not a number"
  exit 1
fi

n=$1
first=1
#первая половина ромба
for((i=0;i<n;i++)); do
	for((j=0;j<((n-first));j++)); do
		echo -n " "
	done
	for ((k = 0;k < $first; k++)); do
		echo -n "* "
	done
	echo ""
	first=$(($first + 1))
done

second=n-1
#Вторая половина ромба
for ((i = 0; i<=((n - 1)); i++)); do
	for ((j = 0; j < ((n-second));j++)); do
		echo -n " "
	done
	for ((k = 0; k < second; k++)); do
		echo -n "* "
	done
	echo ""
	second=$(($second -1))
done

exit 0

