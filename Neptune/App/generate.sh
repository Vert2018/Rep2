#!/bin/bash
echo "Escriba el contenido a guardar"
read CONT
echo "Nombrar archivo"
read FILENAME
echo $CONT > ../Created/$FILENAME.txt
echo "El archivo ha sido creado satisfactoriamente, busque la carpeta Created"
