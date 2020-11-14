#!/bin/bash

##################################################
##                                              ##
## Comprobando conexion a github (ping) v1.0.0  ##
##                                              ##
## Autores:                                     ##
## kedap (דנטה) <dxhqezk@hi2.in>                ##
## foo (bar) <example@example>                  ##
## you (name) <example@example>                 ##
##                                              ##
## [iusse #1]                                   ##
##                                              ##
##################################################
echo "Checando conexion con github"
ping github.com -c3

# Solucion por foo
if [ $? = 0 ];then
  echo "Tienes conexion"
else
  echo "No tienes conexion"
fi
# Termina la solucion de foo

echo "Finalizando el chequeo de conexion"
