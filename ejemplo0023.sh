#!/bin/bash
echo Forma 1
if whoami > nul; then
	echo "El usuario $USER esta trabajando"
fi;
echo Forma 2
if whoami; then
	echo "El usuario $USER esta trabajando"
fi;