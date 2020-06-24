#!/bin/bash
echo -n "Primer numero: "
read primero
echo -n "Segundo numero: "
read segundo
let suma=$primero+$segundo
echo "La de los numeros $primero y $segundo es: $suma"
