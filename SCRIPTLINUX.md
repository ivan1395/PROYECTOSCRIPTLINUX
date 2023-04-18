# SCRIPT LINUX

- ##### Determinar si 2 es mayor que 1.  Usar corchete simple.

<pre>
<code>
#!/bin/bash
if [ 2 -gt 1 ]
then
	echo "2 es mayor que 1"
else
	echo "2 no es mayor que 1"
fi;

RESULTADO
2 es mayor que 1
</code>
</pre>

- ##### Determinar si 2 es distinto que 3. Usar corchete simple.

<pre>
<code>
#!/bin/bash
if [ 2 -ne 3 ]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi;

RESULTADO
2 es distinto de 3
</code>
</pre>

- ##### Determinar si 4 estra entre 3 y 5. Usar corchete doble.

<pre>
<code>
#!/bin/bash
if [[ 4 -gt 3 && 4 -lt 5 ]]
then
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi;

RESULTADO
4 esta entre 3 y 5
</code>
</pre>

- ##### Determinar si 4 esta entre 3 y 5. Usar corchete simple.

<pre>
<code>
#!/bin/bash
if [ 4 -gt 3 -a 4 -lt 5 ]
then
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi;

RESULTADO
4 esta entre 3 y 5
</code>
</pre>

- ##### Determinar si 2 es distinto que 3. Usar corchete doble.

<pre>
<code>
#!/bin/bash
if [[ 2 -ne 3 ]]
then
	echo "2 es mayor que 3"
else
	echo "2 no es mayor que 3"
fi;

RESULTADO
2 es mayor que 3
</code>
</pre>

- ##### Crear una variable que llamaremos edad y le asignaremos un valor de 15, luego imprimeremos el contenido de la variable en pantalla.

<pre>
<code>
#!/bin/bash
edad=15
echo $edad

RESULTADO
la edad es de 15
</code>
</pre>

- ##### Podemos asignarle diferentes valores a una misma variable

<pre>
<code>
#!/bin/bash
mensaje='Hola mundo'
echo $mensaje
mensaje=5.5
echo $mensaje
mensaje=8
echo $mensaje

RESULTADO
muestra diferentes mensajes con una misma variable
</code>
</pre>

- ##### El shell tiene una forma de evitar que se pueda modificar el valor de una variable, es decir ponerlo como sólo lectura. En el ejemplo siguiente da un error si intentamos moficar el contenido de la variable.

<pre>
<code>
#!/bin/bash
mensaje='Hola mundo'
echo $mensaje
readonly mensaje
mensaje='Cambio de texto'
echo $mensaje

RESULTADO
mensaje es igual a Hola mundo
</code>
</pre>

- ##### Variables especiales

<pre>
<code>
#!/bin/bash
echo "Nombre del script : $0"
echo "Parametro 1 : $1"
echo "Parametro 2 : $2"
echo "Valores de los Parametros: $@"
echo "Valores de los Parametros: $*"
echo "Total Parametros: $#"
echo $?

RESULTADO
Nombre del script: sh
Parametro 1: Hola
Parametro 2: mundo
</code>
</pre>

- ##### Mostrar mensajes en la patalla se usa el comando echo

<pre>
<code>
#!/bin/bash
echo Hoy como estas
edad=20
echo Creo que tienes $edad años
echo -e "Esta \nfrase \nse \nmostrara \npalabra \npor \npalabra \nen \nuna \nlinea \ndistinta \ncada \npalabra"
echo -e "Suprimir lo que viene a continuacion \cel salto de linea"
echo Imprimir todos los ficheros y carpetas a modo de comando ls
echo *
echo Imprimir todos los ficheros de un formato en concreto
echo *.sh
echo "Esta frase se direcciona a un archivo donde queda grabado" > salvar.txt
echo "Esto que sgue se añada al archivo" >> salvar.txt
echo -n "Omitimos el salto de linea"

RESULTADO
mostramos mensajes por pantalla de diferentes maneras
</code>
</pre>

- ##### Representar caracteres unicode

<pre>
<code>
#!/bin/bash
echo -e "\u2622"
echo -e "\U1f41e"
</code>
</pre>

- ##### Comparar el contenido de 2 variables que tienen una cadena almacenada cada variable.

<pre>
<code>
#!/bin/bash
nombre1="Luis"
nombre2="Luis"
if [[ $nombre1 = $nombre2 ]]
then
	echo son iguales
else
	echo son distintos
fi;

RESULTADO
Son iguales
</code>
</pre>

- ##### Se pueden comparar las cadenas directamente si no tiene espacios en blanco sin comillas simples o dobles
 
 <pre>
 <code>
 #!/bin/bash
if [[ Luis = Luis ]]
then
	echo son iguales
else
	echo son distintos
fi;

RESULTADO
Son iguales
 </code>
 </pre>
 
 - ##### Si la cadena tiene espacios en blanco se tienen que poner entre apostrofes simples
 
 <pre>
 <code>
 #!/bin/bash
if [[ 'Luis estas bien' = 'Luis estas bien' ]]
then
	echo son iguales
else
	echo son distintos
fi;

RESULTADO
son iguales
 </code>
 </pre>
 
 - ##### Si la cadena va incluir variables emplear apostrofe doble.
 
 <pre>
 <code>
 #!/bin/bash
clear
variable="Hola"
if [[ "Tengo $edad años" = 'Tengo 15 años' ]]
then
	echo Son iguales
else
	echo Son distintos
fi;

RESULTADO
Son iguales
 </code>
 </pre>
 
 - ##### Hacer un bucle for para iterar sobre valores simples, siendo estos valores cadenas simples.

<pre>
<code>
#!/bin/bash
for var in Primero Segundo Tercero Cuarto Quinto; do
	echo El $var item
done

RESULTADO
Primero Segundo Tercero Cuarto Quinto
</code>
</pre>

- ##### Hacer un bucle for para iterar sobre valores simples, siendo estos valores numeros.

<pre>
<code>
#!/bin/bash
for var in 1 2 3 4 5; do
	echo Numero $var
done

RESULTADO
1 2 3 4 5
</code>
</pre>

- ##### Hacer un bucle for para iterar sobre valores complejos, siendo estos valores palabras o frases.

<pre>
<code>
#!/bin/bash
for var in Primero "El segundo" "El tercero" "El quinto soy yo"; do
	echo Esto es: $var
done

RESULTADO
Esto es: El Segundo
</code>
</pre>

- ##### Hacer un blucle for para mostrar el contenido de un archivo.

<pre>
<code>
#!/bin/bash
miarchivo="walter.txt"
for var in $(cat $miarchivo); do
	echo " $var"
done

RESULTADO
Hola
esto
esta
en un
archivo
</code>
</pre>

- ##### Hacer un blucle for para leer un archivo, pero que considere el carácter de nueva línea como un separador en lugar de espacios.

<pre>
<code>
#!bin/bash
miarchivo="/etc/passwd"
IFS=$'\n'
for var in $(cat miarchivo); do
	echo " $var"
done
</code>
</pre>

- ##### Hacer un bucle for para leer un archivo pero que considere el carácter punto y coma como separador.

<pre>
<code>
#!/bin/bash
miarchivo="walter21.txt"
IFS=$';'
for var in $(cat $miarchivo); do
	echo " $var"
done
</code>
</pre>

- ##### Mostrar el directorio actual y el usuario que se ha logueado en el sistema. El simbolo # al inicio de una línea es para mostrar comentarios de una línea dentro del script, el comando echo es para mostrar mensajes en la pantalla, el comando pwd muestra el directorio actual y el comando whoami es para mostrar el usuario que se ha logueado en el sistema.

<pre>
<code>
#!/bin/bash
# Nuestro comentario de una linea
echo "El directorio actual es:"
pwd
echo "El usuario actual es:"
whoami

RESULTADO
pwd: Ruta
whoami: usuario
</code>
</pre>

- ##### Hacer un script que muestre el mensaje “El usuario NombreUsuario esta trabajando”. Con > nul anulamos la salida del comando para que no se muestre en pantalla.

<pre>
<code>
#!/bin/bash
echo Forma 1
if whoami > nul; then
	echo "El usuario $USER esta trabajando"
fi;
echo Forma 2
if whoami; then
	echo "El usuario $USER esta trabajando"
fi;
</code>
</pre>

- ##### Hacer un script que verifique si un usuario existe o no existe.

<pre>
<code>
#!/bin/bash
usuario=walter
if grep %usuario /etc/passwd > nul;
then
	echo "el usuario $usuario existe"
else
	echo "el usuario $usuario no existe"
fi;

RESULTADO
El usuario no existe
</code>
</pre>

- ##### Hacer un script que verifique si el usuario logueado puede crear un archivo.

<pre>
<code>
#!/bin/bash
touch /root/prueba
if [ $? -eq 0 ];
then
	echo "Se ha creado el fichero"
else
	echo "No se ha creado el fichero"
fi;

RESULTADO
Se ha creado el fichero
</code>
</pre>

- ##### Script que verifica si el usuario logueado puede crear un archivo.

<pre>
<code>
#!/bin/bash
touch prueba
if [ $? -eq 0 ];
then
	echo "Se ha creado el fichero"
else
	echo "No se ha creado el fichero"
fi;

RESULTADO
Se ha creado el fichero
</code>
</pre>

- ##### Comprobar si puedo ingresar a mi carpeta personal de trabajo.

<pre>
<code>
#!/bin/bash
clear
micarpeta=/home/walter
if [ -d $micarpeta ];
then
	echo "Carpeta $micarpeta existe"
	cd $micarpeta
	pwd
	ls
else
	echo "No hay archivo o directorio $micarpeta"
fi;
</code>
</pre>

- ##### Verificar si una variable tiene valor o no. Con –n busca un valor mayor que cero

<pre>
<code>
#!/bin/bash
clear
variable="Hola"
if [ -n $variable ];
then
	echo "Tiene una longitud mayor que cero"
else
	echo "Tiene un longitud de cero"
fi;
</code>
</pre>