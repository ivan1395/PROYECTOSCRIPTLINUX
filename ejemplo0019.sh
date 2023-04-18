#!/bin/bash
miarchivo="walter.txt"
for var in $(cat $miarchivo); do
	echo " $var"
done