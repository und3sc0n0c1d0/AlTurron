#!/bin/bash

echo "  ___   _    _____                            _ "
echo " / _ \ | |  |_   _|                          | |"
echo "/ /_\ \| |    | |_   _ _ __ _ __ ___  _ __   | |"
echo "|  _  || |    | | | | | '__| '__/ _ \| '_ \  | |"
echo "| | | || |___ | | |_| | |  | | | (_) | | | | |_|"
echo "\_| |_/\_____/\_/\__,_|_|  |_|  \___/|_| |_| (_)"
echo ""
echo "................................................"
echo "|AlTurrón Versión 1.0                          |"
echo "|Escrito por: Juampa UnD3sc0n0c1d0 Rodríguez   |"
echo "|Moebiusec Team (http://www.moebiusec.com/blog)|"
echo "................................................"
echo ""

echo "-Indica tu listado de ficheros:"
read ListaFicheros
echo ""
echo "-Indica la URL (PATH) desde donde vas descargar:"
read Ruta
echo ""

Min=1
Max=$(cat $ListaFicheros | wc -l);

	mkdir Descarga
	cd Descarga
	IFS=$'\n'
	for Ficheros in $(cat ../$ListaFicheros);
	do echo "Descargando $Min de $Max" && wget "$Ruta$Ficheros" -a .LOG;
	Min=$(($Min+1))
	done
