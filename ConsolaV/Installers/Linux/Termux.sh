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
echo "  1) Usuario normal (Android termux)"
echo "  2) Desarrollador"
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
    echo "Demas gemas..."
	echo "Estas deacuerdo con esto? [S/n]"
	read ola
    if [ $ola = "n" ]; then
		echo "Es de awebo bro :("
		exit
	else
		echo "Cargando..."
	fi
    echo "Instalando ruby..."
    pkg install ruby
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
    echo "ruby main.rb"
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
    echo "Demas gemas..."
	echo "Estas deacuerdo con esto? [S/n]"
	read ola
    if [ $ola = "n" ]; then
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
    echo "Instando ngrok"
    arch=$(uname -a | grep -o 'arm' | head -n1)
    arch2=$(uname -a | grep -o 'Android' | head -n1)
    if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
        wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

    if [[ -e ngrok-stable-linux-arm.zip ]]; then
        unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
        chmod +x ngrok
        rm -rf ngrok-stable-linux-arm.zip
    else
        printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
        exit 
    fi

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
    echo "ruby main.rb"
}

case $opc in "1") usern ;;
"2") userd ;;
*)
echo "No bro..."
esac