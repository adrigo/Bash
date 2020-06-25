#!/bin/bash
echo -n "Indica la carpeta(Ruta absoluta): "
read carpeta

ls -R $carpeta | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
