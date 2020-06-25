#!/bin/bash
echo "Script that shows a hierarchical tree of folders."
echo "If folder is not provided it will show of folder you are located atd."
echo -n "Indica la carpeta(Ruta absoluta): "
read carpeta
if [ -z "$carpeta" ]
then
  ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
else
  ls -R $carpeta | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
fi
