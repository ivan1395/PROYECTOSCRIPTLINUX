#!/bin/bash
# Autor: Ivan Martinez
# Fecha: 18/04/2023
while true; do
	clear
	echo "MENU"
	echo "----"
	echo "(1) CREAR EL CONTROL DE VERSION"
	echo "(2) CONFIGURAR EL USUARIO: NOMBRE-EMAIL-PASSWORD"
	echo "(3) REALIZAR EL PRIMER COMMIT"
	echo "(4) REALIZAR COMMIT SOBRE EL ULTIMO"
	echo "(5) CONFIGURAR EL REPOSITORIO REMOTO"
	echo "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
	echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
	echo "(8) SALIR"

	echo
	echo -n "ESCRIBA SU OPCION: "
	read opcion

	case $opcion in 
	1)
	clear
	echo "(1) CREAR EL CONTROL DE VERSION"
	echo "-------------------------------"
	git init
	read -rsp $'\nPress enter to continue...'
	;;
	2)
	clear
	echo "(2) CONFIGURAR EL USUARIO: NOMBRE-EMAIL-PASSWORD"
	echo "------------------------------------------------"
	git config user.name "ivan1395"
	git config user.email "ivanexplosion1995@gmail.com"
	git config user.password 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
	read -rsp $'\nPress enter to continue...'
	;;
	3)
	clear
	echo "(3) REALIZAR EL PRIMER COMMIT"
	echo "-----------------------------"
	git add .
	git commit -m "SNAPSHOPT 1"
	read -rsp $'\nPress enter to continue...'
	;;
	4)
	clear
	echo "(4) REALIZAR COMMIT SOBRE EL ULTIMO"
	echo "-----------------------------------"
	git add .
	git commit --amend -m "SNAPSHOPT 1"
	read -rsp $'\nPress enter to continue...'
	;;
	5)
	clear
	echo "(5) CONFIGURAR EL REPOSITORIO REMOTO"
	echo "------------------------------------"
	git remote add origin "https://github.com/ivan1395/PROYECTOSCRIPTLINUX.git"
	read -rsp $'\nPress enter to continue...'
	;;
	6)
	clear
	echo "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
	echo "--------------------------------------------------------"
	git branch -M main
	read -rsp $'\nPress enter to continue...'
	;;
	7)
	clear
	echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
	echo "----------------------------------------"
	git push -u -f origin main
	read -rsp $'\nPress enter to continue...'
	;;
	8)
	clear
	echo "GRACIAS POR SU VISITA"
	echo "---------"
	read -rsp $'\nPress enter to continue...'
	exit 0
	;;
	*)
	clear
	echo "OPCION INCORRECTA"
	read -rsp $'\nPress enter to continue...'
	;;
	esac 
done 