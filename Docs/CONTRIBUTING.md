# Contribuyendo a Tool-AC
Antes que nada, gracias a ti por contribuir en Tool-AC :D!!!

Resumen de todo este contenido:

1- [Peticiones de ideas](#peticiones-de-ideas)
2- [Reportes de bugs](#reportes-de-bugs)
3- [Parches y Pull Requests](#parches-y-pull-requests)
  I- [Flujo de colaboracion](#flujo-de-colabroacion)
    A- [Caja de descripcion](#caja-de-descripcion)
  II- [Documentacion](#documentacion)
  III- [Testers](#testers)
4- [Desarrollador de version](#desarrollador)
5- [Proceso de lanzamiento](#lanzamiento)
## Peticiones de ideas

Todas las solitudes de nuevas funciones deben de ser enviadas a el [reatreador de problemas de tool-ac](https://github.com/Kedap/Tool-AC/issues).
Esto para reducir la cantidad de duplicados.

## Reportes de bugs

Todos los reportes deben de informarse a el [rastreador de problemas de tool-ac](https://github.com/Kedap/Tool-AC/issues) para que sean resueltos.

## Parches y Pull Requests

Todos los parches deben enviarse a github como [pull requests](https://github.com/Kedap/Tool-AC/pulls)
si usted deseea empezar a contribuir en tool-ac puede empezar a atender [Buscando ayuda](https://github.com/Kedap/Tool-AC/labels/help%20wanted) o [Solicitud de funciones](https://github.com/Kedap/Tool-AC/labels/enhancement)

### Flujo de colaboracion

Primero y antes que nada debe de checar los iusses para empezar a trabajar.
Si lo que usted desea es empezar a colaborar desde ahora como lo dice aqui arriba puede empezar a atender el [rastreador de problemas](https://github.com/Kedap/Tool-AC/issues) tomando como prioridad a los que contiene la etqueta de [help wanted](https://github.com/Kedap/Tool-AC/labels/help%20wanted).
Pero esto creando una nueva rama a partir del ultimo commit de la rama [develop](https://github.com/Kedap/Tool-AC/tree/develop) y **NO** desde master. La rama que has creado debe tener como nombre el titulo o numero del issue que estas atendiendo a si mismo debes de modificar la [caja de descripcion](#caja-de-descripcion) colocando los datos correspondientes.
Una ves que hayas terminado puedes hacer el pull requests pero a la rama [develop](https://github.com/Kedap/Tool-AC/tree/develop) en donde un [tester](#testers) debe de aceptar dicha mejora, si tu contribuyes a algo beneficioso es muy probable que sea aceptada

### Caja de descripcion

La caja de descripcion es aquella que se ubica en la parte superior de cada archivo de codigo y debe de ser modificada cada que hace un cambio para el mejor manejo de esta no aplica en los archivos de documentacion, para ello consulte [documentacion](#documentacion), dicha caja esta comentada para que interfiera con el codigo. Una caja de descripcion luce algo asi tomando como ejemplo del archivo [ejemplo](/Docs/ejemplo.sh):
antes:
```
#!/bin/bash

##################################################
##                                              ##
## Comprobando conexion a github (ping) v1.0.0  ##
##                                              ##
## Autores:                                     ##
## kedap (דנטה) <dxhqezk@hi2.in>                ##
##                                              ##
##################################################
echo "Checando conexion con github"
ping github.com -c3
echo "Finalizando el chequeo de conexion"
```
Despues:
```
#!/bin/bash

##################################################
##                                              ##
## Comprobando conexion a github (ping) v1.0.0  ##
##                                              ##
## Autores:                                     ##
## kedap (דנטה) <dxhqezk@hi2.in>                ##
## foo (bar) <example@example>                  ##
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
```

Ahora analizaremos la caja de descripcion no es algo dificil, En la primera linea tenemos al mitico

```
!/bin/bash
```
Esto forma parte del codigo asi que lo dejamos tal cual, en la siguiente linea nos encontramos a:
```
Comprobando conexion a github (ping) v1.0.0
```
Esto es un resumen del archivo y su version, nos enfocaremos mas en la version ya que cuando comparamos el antes y el despues nos damos cuenta que la version tampoco coinside 
ya que cada vez que haces una nueva mejora en el codigo este va a aumentar un 1 al ultimo, recuerda siempre aumentar ese 1 cada vez que trabajes en una nueva mejora en el codigo.
En las siguientes lineas tenemos:
```
Autores:
kedap (דנטה) <dxhqezk@hi2.in>
foo (bar) <example@example>
```
Pues como es logico en esta parte se coloca el nombre de usuario de github y si deseas en parentesis un alias, desde luego dentro de < > debes de colocar una direccion de correo electronico, esto con la finalidad de que tengamos la necesidad de contactarte referente al codigo.
En la siguiente linea encontraremos:
```
[iusse #1]
```
Esta linea como todo creemos que es, es el iusse que esta atendiendo.
Si navegamos mas en el codigo nos encontraremos con lo siguiente:
```
Solucion por foo
```
y
```
Termina la solucion
```
Esto se hace para que a nuestros [testers](#testers) sea mas practico encontrar la implementacion que agregaste

### Documentacion

El codigo debe de documentarse cuando sea apropiado. Si usted cree que realizo un cambio que necesita ser documentando o simplemente quiere extender la documentacion puede agregar dicha documentacion en el [directorio docs](/Docs) e indexarla desde el [README](/README.md).
Claro en la [rama](#flujo-de-colabroacion) que usted creo y despues hacer el pull requests a la rama [develop](https://github.com/Kedap/Tool-AC/tree/develop) en donde uno de nuestros [testers]() aceptara tu documentacion
### Testers
Son una parte fudamental en el crecimiento de este proyecto, son aquellos que se encargan de checar todos los pulls requests, probarlos  y aceptarlos, si tu quieres ser parte los testers puede mandar un mensaje a [telegram](https://t.me/Kedap_Develop)

## Desarrollador
Desarrollador de version son aquellos que sobresalen en sus aportaciones en este proyecto y son invitados a ser los desarrolladores para realizar la proxima version son los que trabajan para implementacion de nuevas cosas y resolver los iusses para implementarlos
si tu deseeas ser parte de este equipo debes de aportar con pull requests positivos para el proyecto y nosotros te contactaremos para que formes parte de este equipo

## Lanzamiento

El ciclo de lanzamiento es el siguiente
 1- Iniciamos con la version 1.1.1-beta desde la rama master
 2- Se crea una rama de desarrollo llamada develop
 3- En esta rama trabajan los [desarrolladores de version](#desarrollador)
 4- Se solucionan algunos issues implementacion de mejoras (estas estaran escritas en la caja de descripcion)
  4.1- Es posible que algunos iusses no se les tome importancia, revisaste en la caja de descrpcion y no se soluciona dicho iusse asi que tu decides colaborar
  4.2- Creas una rama a partir del ultimo commit de la rama de develop y empiezas a trabajar
  4.3- Terminas de trabajar en aquel issues y haces el pull requests a la rama develop y es aceptada. La rama que creaste es elminada pero implementada a la develop
 5- Ahora se terminan los detalles en la rama develop para hacer pull request a la rama master
 6- Se hace pull request a master y se afinan mas detalles
 7- Se lanza la aplicacion!
