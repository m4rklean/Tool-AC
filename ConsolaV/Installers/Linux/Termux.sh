########################################################
#                                                      #
#   Instalador v1.1.0-beta para Termux                 #
#                                                      #
########################################################
clear
echo "                     ┏━━━━┓━━━━━━━━┏┓━━━━━━┏━━━┓┏━━━┓"
echo "                     ┃┏┓┏┓┃━━━━━━━━┃┃━━━━━━┃┏━┓┃┃┏━┓┃"
echo "                     ┗┛┃┃┗┛┏━━┓┏━━┓┃┃━━━━━━┃┃━┃┃┃┃━┗┛"
echo "                     ━━┃┃━━┃┏┓┃┃┏┓┃┃┃━┏━━━┓┃┗━┛┃┃┃━┏┓"
echo "                     ━┏┛┗┓━┃┗┛┃┃┗┛┃┃┗┓┗━━━┛┃┏━┓┃┃┗━┛┃"
echo "                     ━┗━━┛━┗━━┛┗━━┛┗━┛━━━━━┗┛━┗┛┗━━━┛"
echo "                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"   
echo "                                                       instalador (Termux)                                           "
echo "      Que tipo de usuario vas a ser "
echo ""
echo "  1) Usuario normal"
echo "  2) Desarrollador o tester"
echo ""
echo "Digita tu opcion:"
read opc

#funciones
usern()
{
    echo "Se instalaran o actualizaran las siguientes dependencias"
	echo "Ruby"
    echo "PHP"
    echo "cURL"
    echo "wget"
    echo "unzip"
    echo "Demas gemas..."
	echo "Estas deacuerdo con esto? [S/n]"
	read ola
    if [ $ola = "n" ]; then
        echo ":: > [1.0]"
		echo "Es de awebo bro :("
		exit
	else
		echo "Cargando..."
	fi
    echo "Instalando ruby..."
    pkg install ruby
    echo "Instalado unzip"
    pkg install unzip
    echo "Instalando wget"
    pkg install wget
    echo "Purgando..."
    rm -R Tool-AC
    echo "Creando carpeta"
    mkdir Tool-AC
    cd Tool-AC
    echo "Descargando Tool-AC"
    wget https://github.com/Kedap/Tool-AC/releases/download/Beta/Tool-AC_1.1.0-beta.zip;
    unzip Tool-AC_1.1.0-beta.zip;   
    echo "Instalando gemas..."
    gem install colorize
    gem install tty-platform
    gem install ipaddr
    gem install macaddr
    gem install uri
    gem install http
    gem install net
    gem install json
    gem install mechanize
    gem install ruby-progressbar
    gem install nokogiri
    gem install selenium-webdriver
    gem install faker
    chmod +x main.rb
    echo "Instalado"
    echo "Ejecuta:"
    echo "Tool-AC/main.rb"
}

userd()
{
    echo "Se instalaran o actualizaran las siguientes dependencias"
	echo "Ruby"
    echo "Vim"
    echo "Git"
    echo "PHP"
    echo "cURL"
    echo "ngrok"
    echo "unzip"
    echo "wget"
    echo "Demas gemas..."
	echo "Estas deacuerdo con esto? [S/n]"
	read ola
    if [ $ola = "n" ]; then
        echo ":: > [1]"
		echo "Es de awebo bro :("
		exit
	else
		echo "Cargando..."
	fi
    echo "Instalando ruby..."
    pkg install ruby
    echo "Instando vim"
    pkg install vim
    echo "Instando Git"
    pkg install Git
    echo "Instando PHP"
    pkg install PHP
    echo "Instando cURL"
    pkg install curl 
    echo "Instalando unzip"
    pkg install unzip
    echo "Instalando wget"
    pkg install wget
    echo "Instando ngrok"
    arch=$(uname -a | grep -o 'arm' | head -n1)
    arch2=$(uname -a | grep -o 'Android' | head -n1)
    if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
        wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

    elif [[ -e ngrok-stable-linux-arm.zip ]]; then
        unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
        chmod +x ngrok
        rm -rf ngrok-stable-linux-arm.zip
    else
        echo ":: > [2.2]"
        printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
        exit 
    fi

    
    echo "Clonando desde el repositorio"
    git clone https://github.com/Kedap/Tool-AC; 
    cd Tool-AC/ConsolaV/;
    echo "Cambiando a la rama de desarrollo (develop)"
    git switch develop 
    echo "Instalando gemas..."
    gem install colorize
    gem install tty-platform
    gem install ipaddr
    gem install macaddr
    gem install uri
    gem install http
    gem install net
    gem install json
    gem install mechanize
    gem install ruby-progressbar
    gem install nokogiri
    gem install selenium-webdriver
    gem install faker
    chmod +x main.rb
    echo "Instalado"
    echo "Ejecuta:"
    echo "Tool-AC/ConsolaV/main.rb"
    echo "Recuerda que si vez alguna anomalia puedes reportarla en:"
    echo "https://github.com/Kedap/Tool-AC/issues"
}

# Separador

case $opc in "1") usern ;;
"2") userd ;;
*)
echo ":: > [1]"
echo "Vuelve a intentar"
esac