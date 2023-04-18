#!/bin/bash
usuario=walter
if grep %usuario /etc/passwd > nul;
then
	echo "el usuario $usuario existe"
else
	echo "el usuario $usuario no existe"
fi;