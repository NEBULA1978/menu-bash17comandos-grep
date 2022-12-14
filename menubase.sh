#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Mostrar la palabra que estamos buscando no muestra la linea que la contiene"
    echo "6. Crear opciones de esta parte del menu del numero 6 al 16"
    echo "7. Mostrar solo la palabra tutaina sin nada antes ni despues junto a ella"
    echo "8. Mostar archivos dentro de una carpeta de mis Documentos"
    echo "9. Ver en que linea esta pepito en mayus o minus indiferente"
    echo "10. Ver en que linea esta pepito en  minus con -n"
    echo "11. Ver en que linea esta Pepito en  mayus con -n"
    echo "12. Ver en que linea esta Pepito en  mayus en todos arcivos texto con -n"
    echo "13. Ver la linea con -w del parametro que le estamos pasando"
    echo "14. BUscar dos palabras al mismo tiempo con -w |"
    echo "15. Buscar la palabra Pepito en mayus o minus indiferente con -v omite la frase"
    echo "16. Buscar pepito y nos colorea la palabra con --color"
    echo "17. Muestrame la linea Pepito y las dos lineas por encima de donde esta la palabra Pepito -B 2"
    echo "18. Muestrame la linea Pepito y las dos lineas por debajo de donde esta la palabra Pepito -A 2"
    echo "19. Ver en carpeta Documentos los archivos .txt"
    echo "20. Ver los grupos que pertenece ususario next"
    echo "21. Ver la linea del ususario next dento de /etc/passwd"
    echo "22. Leer archivo con cat y piperlo con grep pepito"
    echo "23. Mostrar el modelo del ordenador actual desde home"
    echo "24. Ver el kernel"
    echo "25. Ver el kernel instalado actualmente"
    echo "26. Ver errores en /var/log/syslog"
    echo "27. Buscar pepito dentro de todas las carpetas del directorio actual"
    echo "28. Buscar pepito dentro de todas las carpetas del directorio actual sin mostrar errores"
    
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Mostrar la palabra que estamos buscando no muestra la linea que la contiene"
        grep 'pepito' Esto-no-se-que-sera.txt
        read foo
        ;;
    6)
        echo "Crear opciones de esta parte del menu del numero 6 al 16"
        ./'prueba-nombres-menu-BUENO copy 2.sh'
        cat nombres.txt
        cat nombres2.txt
        cat 'prueba-nombres-menu-BUENO copy 2.sh'
        read foo
        ;;

    7)
        echo " Mostrar solo la palabra tutaina sin nada antes ni despues junto a ella"
        grep -i 'tutaina' Esto-no-se-que-sera.txt
        read foo
        ;;
    8)
        echo " Mostar archivos dentro de una carpeta de mis Documentos"
        cd
        grep -R 'ubuntu' Documentos/ 
        read foo
        ;;
    9)
        echo " Ver en que linea esta pepito en mayus o minus indiferente"
        
        grep -c 'pepito' Esto-no-se-que-sera.txt
        cat Esto-no-se-que-sera.txt
        read foo
        ;;
    10)
        echo "Ver en que linea esta pepito en  minus con -n"
        
        grep -n 'pepito' Esto-no-se-que-sera.txt
        cat Esto-no-se-que-sera.txt
        read foo
        ;;
    11)
        echo "Ver en que linea esta Pepito en  mayus con -n"
        
        grep -n 'Pepito' Esto-no-se-que-sera.txt
        cat *.txt
        read foo
        ;;
    12)
        echo "Ver en que linea esta Pepito en  mayus en todos arcivos texto con -n"
        
        grep -n *'.txt'
        cat Esto-no-se-que-sera.txt
        read foo
        ;;
    13)
        echo "Ver la linea con -w del parametro que le estamos pasando"
        
        grep -w "pepito" Esto-no-se-que-sera.txt
        cat Esto-no-se-que-sera.txt
        read foo
        ;;
    14)
        echo "BUscar dos palabras al mismo tiempo con -w |"
        
        grep -w 'pepito|tutaina' Esto-no-se-que-sera.txt
        cat Esto-no-se-que-sera.txt
        read foo
        ;;
    15)
        echo "Buscar la palabra Pepito en mayus o minus indiferente con -v omite la frase"
        
        grep -v "Pepito" Esto-no-se-que-sera.txt
        cat Esto-no-se-que-sera.txt
        read foo
        ;;
    16)
        echo "Buscar pepito y nos colorea la palabra con --color"
        
        grep --color 'pepito' Esto-no-se-que-sera.txt
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    17)
        echo "Muestrame la linea Pepito y las dos lineas por encima de donde esta la palabra Pepito -B 2"
        
        grep -B 2 'Pepito' Esto-no-se-que-sera.txt
        cat Esto-no-se-que-sera.txt
        read foo
        ;;
    18)
        echo "Muestrame la linea Pepito y las dos lineas por debajo de donde esta la palabra Pepito -A 2"
        
        grep -A 2 'Pepito' Esto-no-se-que-sera.txt
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    19)
        echo "Ver en carpeta Documentos los archivos .txt"
        
        grep -l 'ubuntu' Documentos/'ultimos menus bash juntos'/*.txt
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    20)
        echo "Ver los grupos que pertenece ususario next"
        
        grep next /etc/group
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    21)
        echo "Ver la linea del ususario next dento de /etc/passwd"
        
        sudo cat /etc/passwd | grep next
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    22)
        echo "Leer archivo con cat y piperlo con grep pepito"
        
        cat Esto-no-se-que-sera.txt | grep 'pepito'
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    23)
        echo "Mostrar el modelo del ordenador actual desde home"
        
        cd
        cat /proc/cpuinfo | grep -i 'Model'
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    24)
        echo "Ver el kernel"
        
        cd
        dpkg --list | grep linux-image
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    25)
        echo "Ver el kernel instalado actualmente"
        
        cd
        uname -a
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    26)
        echo "Ver errores en /var/log/syslog"
        
        cd
        sudo grep -C 2 -B 3 -A 6 --color 'Error' /var/log/syslog
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    27)
        echo "Buscar pepito dentro de todas las carpetas del directorio actual"
        
        
        grep pepito *
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    28)
        echo "Buscar pepito dentro de todas las carpetas del directorio actual sin mostrar errores"
        
        
        grep -s pepito *
        # cat Esto-no-se-que-sera.txt
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
