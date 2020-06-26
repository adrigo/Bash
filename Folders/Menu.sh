#!/bin/bash
function crear {
  echo -n "Indica el nombre de la carpeta: "
  read nombre
  echo "Creando carpeta $nombre ..."
  mkdir $nombre
}

function renombrar {
  echo -n "Indica el nombre actual de la carpeta: "
  read nombre1
  echo -n "Indica el nombre nuevo de la carpeta: "
  read nombre2
  echo "Renombrando carpeta $nombre1 ..."
  mv $nombre1 $nombre2
}

function eliminar {
  echo -n "Indica el nombre de la carpeta: "
  read nombre
  echo "Eliminando carpeta $nombre ..."
  rmdir $nombre
}

function quit {
  echo "Adios..."
  exit
}

function menu {
  echo "Elige que hacer:"
  echo "1- Crear carpeta."
  echo "2- Renombrar carpeta."
  echo "3- Eliminar carpeta."
  echo "4- Cerrar."
  echo -n "Numero de la opcion: "
  read Opcion
  
  case $Opcion in
    1)
      crear
    ;;
    2)
      renombrar    
    ;;
    3)
      eliminar
    ;;
    4)
      quit
    ;;
    *)
    echo "No existe la opcion seleccionada"
    ;;
  esac
  
  echo ""
}

while [[ true ]]; do
  menu
done
