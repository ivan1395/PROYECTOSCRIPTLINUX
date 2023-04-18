#!/bin/bash
clear
variable="Hola"
if [ -n $variable ];
then
	echo "Tiene una longitud mayor que cero"
else
	echo "Tiene un longitud de cero"
fi;