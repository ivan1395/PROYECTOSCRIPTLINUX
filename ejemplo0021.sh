#!/bin/bash
miarchivo="walter21.txt"
IFS=$';'
for var in $(cat $miarchivo); do
	echo " $var"
done