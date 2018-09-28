#!/bin/bash
echo "¿Cómo te llamas?"
read NAME
echo Bienvenido, $NAME!

echo "Seleccione una opción"
echo "1:Secuencia de números"
echo "2:Ejecutar Editor de texto (Nano)"
echo "Para salir, pulse cualquier tecla"
read option
if [ $option != 2 ]
then
	echo "Escriba un número"
	read NUM
	seq $NUM > seq.txt
	echo "El archivo ha sido escrito satisfactoriamente"
else
	nano
fi
