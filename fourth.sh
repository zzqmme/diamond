#!/bin/bash

n=$1
first=1
for((i=0;i<n;i++))
do
	for((j=0;j<((n-first));j++))
	do
		echo -n " "
	done
	for ((k = 0;k < $first; k++))
	do
		echo -n "* "
	done
	echo ""
	first=$(($first + 1))
done

second=n-1
for ((i = 0; i<=((n - 1)); i++))
do
	for ((j = 0; j < ((n-second));j++))
	do
		echo -n " "
	done
	for ((k = 0; k < second; k++))
	do
		echo -n "* "
	done
	echo ""
	second=$(($second -1))
done

exit 0

