#!/bin/bash

# Definimos un array con las opciones del menú. Cada opción es una cadena con dos partes separadas por el carácter '|': el nombre de la opción y el comando correspondiente.
opciones=(
    "Mostrar directorio:|ls -lth"
    "Mostrar calendario:|cal"
    "Mostrar fecha de hoy:|date"
    "Mostrar la palabra que estamos buscando no muestra la línea que la contiene:|grep 'pepito' Esto-no-se-que-sera.txt"
    "Crear opciones de esta parte del menú del número 6 al 16:|./'prueba-nombres-menu-BUENO copy 2.sh'"
    "Mostrar solo la palabra 'tutaina' sin nada antes ni después junto a ella:|grep -i 'tutaina' Esto-no-se-que-sera.txt"
    "Mostrar archivos dentro de una carpeta de mis Documentos:|cd && grep -R 'ubuntu' Documentos/"
    "Ver en qué línea está 'pepito' en mayúsculas o minúsculas indiferentemente:|grep -i 'pepito' Esto-no-se-que-sera.txt"
    "Ver en qué línea está 'pepito' en minúsculas con -n:|grep -n 'pepito' Esto-no-se-que-sera.txt"
    "Ver en qué línea está 'Pepito' en mayúsculas con -n:|grep -n 'Pepito' Esto-no-se-que-sera.txt"
    "Ver en qué línea está 'Pepito' en mayúsculas en todos los archivos de texto con -n:|grep -n 'Pepito' *.txt"
    "Ver la línea con -w del parámetro que le estamos pasando:|grep -w 'pepito' Esto-no-se-que-sera.txt"
    "Buscar dos palabras al mismo tiempo con -w:|grep -w 'pepito\|tutaina' Esto-no-se-que-sera.txt"
    "Buscar la palabra 'Pepito' en mayúsculas o minúsculas indiferentemente con -v omite la frase:|grep -vi 'Pepito' Esto-no-se-que-sera.txt"
    "Buscar 'pepito' y colorear la palabra con --color:|grep --color 'pepito' Esto-no-se-que-sera.txt"
    "Mostrar la línea 'Pepito' y las dos líneas por encima de donde está la palabra 'Pepito' -B 2:|grep -B 2 'Pepito' Esto-no-se-que-sera.txt"
    "Mostrar la línea 'Pepito' y las dos líneas por debajo de donde está la palabra 'Pepito' -A 2:|grep -A 2 'Pepito' Esto-no-se-que-sera.txt"
    "Ver archivos .txt en la carpeta 'Documentos':|grep -l 'ubuntu' Documentos/'ultimos menus bash juntos'/*.txt"
    "Ver los grupos a los que pertenece el usuario 'next':|grep 'next' /etc/group"
    "Ver la línea del usuario 'next' en /etc/passwd:|sudo cat /etc/passwd | grep 'next'"
    "Leer archivo con 'cat' y piperearlo con 'grep pepito':|cat Esto-no-se-que-sera.txt | grep 'pepito'"
    "Mostrar el modelo del ordenador actual desde home:|cd && cat /proc/cpuinfo | grep -i 'Model'"
    "Ver el kernel instalado actualmente:|cd && uname -r"
    "Ver errores en /var/log/syslog:|cd && sudo grep -C 2 -B 3 -A 6 --color 'Error' /var/log/syslog"
    "Buscar 'pepito' dentro de todas las carpetas del directorio actual:|grep -r 'pepito' *"
    "Buscar 'pepito' dentro de todas las carpetas del directorio actual sin mostrar errores:|grep -sr 'pepito' *"
    "Salir:|exit 0"
)

while true; do
    clear
    echo "MENU SCRIPT V.2"
    echo "==============================="
    echo "Escoja una opción:"
    for ((i=0; i<${#opciones[@]}; i++)); do
        echo "$i. ${opciones[i]%%:*}" # Imprimimos el índice y el nombre de la opción (sin el comando).
    done
    echo "==============================="
    read -p "Ingrese el número de la opción: " opcion

    if [[ $opcion =~ ^[0-9]+$ ]] && [ "$opcion" -ge 0 ] && [ "$opcion" -lt ${#opciones[@]} ]; then
        clear
        seleccion="${opciones[$opcion]#*|}" # Obtenemos el comando correspondiente a la opción seleccionada.
        eval "$seleccion" # Ejecutamos el comando.
        read -p "Presione Enter para continuar..."
    else
        echo "Opción inválida. Presione Enter para continuar..."
        read -p "Presione Enter para"
    fi
done
