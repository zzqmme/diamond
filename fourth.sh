#!/bin/bash

	n=$1
	for((k=1;k<=n;k++))
	{
		for((i=k;i<=n;i++))
		{
			echo -ne " ";
		}

		for((j=1;j<=i;j++))
		{
			echo -ne "*";
		}

		for((z=1;z<=i;z++))
		{
			echo -ne "*";
		}

		echo;
	}



