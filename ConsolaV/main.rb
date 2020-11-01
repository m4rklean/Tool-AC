#!/usr/bin/env ruby

#Version 1.1.1-beta: 1- Script version, 1- Entrono facil, 1- Commit Errores

########################################################
##                                                    ##
## Contribuidores:                                    ##
## Kedap דנטה.Team Movistar                           ##
##                                                    ##
########################################################
$limpiar = "\e[H\e[2J"
puts("#{$limpiar}")
puts("Cargando...")

#dependencias (gemas)
require 'colorize'
require 'tty-platform'
require 'macaddr'
require 'faker'


#cURL -H
require 'net/http'
require 'uri'
require 'json'

#Clases de dependencias
$platform = TTY::Platform.new

#Variables de texto
msgran = ["v1.1.1-beta","Hola gamer", "Esta va para el admin .|.", "msgdon.sample","Power by #TeamMovistar",
"All you need is love, all you need is hope","Hey bro, nice dick","F","11","NO!","Hecho en Mexico",
"SIIIIIII!","Sin miedo al exito","ReadOS <3","Cambiate a movistar plz","Feliz cumpleaños","2.2",
"Alse try evil-sofia","Version de Consola","100% libre de gluten", "H4ck th3 W0rld","T I E M P O O ! ! !",
"Bebesita bebelin","Hello Moto","Boca sho te amo",":(","Obsidian", "No hay chiste","I love E",
"Don't worry, be happy"," ","D n E","No hay sistema joven","Hola wap@","Una troca salio de durango...",
"Al toke mi rey","En efecto compañero","Esta va para el que lo lea <3","[Mensaje random]", "RubRub?",
"Puto el que lo lea","Un saludo para toda la banda","Un saludo para la grasa","Hey sister, nice clitoris",
"SOFTWARE LIBRE","El original","Con linki park de fondo","Un tal Emilio esta leyendo esto, un saludo ;)",
"Echale ganas mijo","Ojos color sol","نريد التغيير!","EZNL ★"]
hora =  Time.now.strftime("%R")
OSV = $platform.version
OS = $platform.os
$mac = Mac.addr

#Icono de error
$err = "::".colorize(:red)

#Checando coneccion a internet y obtener direccion IP

begin
    $ip = Net::HTTP.get(URI("https://api.ipify.org"))
rescue Exception => e
    puts "#{$err}> [1.0]\nPor: #{e.message}\nLas herramientas no se ejecutaran correctamente"
    $ip = "No Disponible"
    sleep 4
end

LOGO = "
                     ┏━━━━┓━━━━━━━━┏┓━━━━━━┏━━━┓┏━━━┓
                     ┃┏┓┏┓┃━━━━━━━━┃┃━━━━━━┃┏━┓┃┃┏━┓┃
                     ┗┛┃┃┗┛┏━━┓┏━━┓┃┃━━━━━━┃┃━┃┃┃┃━┗┛
                     ━━┃┃━━┃┏┓┃┃┏┓┃┃┃━┏━━━┓┃┗━┛┃┃┃━┏┓
                     ━┏┛┗┓━┃┗┛┃┃┗┛┃┃┗┓┗━━━┛┃┏━┓┃┃┗━┛┃
                     ━┗━━┛━┗━━┛┗━━┛┗━┛━━━━━┗┛━┗┛┗━━━┛
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"
msgdon = msgran.sample
INICIO = " \t \t \t\t\t\t#{msgdon.yellow}
\n\t\t  Github: https://github.com/Kedap/Tool-AC
\tTime: #{hora.to_s.colorize(:white)}  Os: #{OS.to_s.colorize(:white)} #{OSV.to_s.colorize(:white)} Ip: #{$ip.colorize(:white)} Mac Addres: #{$mac.to_s.colorize(:white)}"
MENUS = "
\n Escoje una seccion del menu
\n \t1) CC'S
\t2) Carding
\t3) CrackTools
\t4) Acerca de, creditos e informacion del sistema
\t99) Salir
"
LOGOCCS ="
\n\t\t\t ░░░░░░  ░░░░░░     ░░░░░░░
\t\t\t▒▒      ▒▒          ▒▒
\t\t\t▒▒      ▒▒          ▒▒▒▒▒▒▒
\t\t\t▓▓      ▓▓               ▓▓
\t\t\t ██████  ██████     ███████ "
MENUC= "
\n Escoje una opcion del menu
\n \t1) Extrapolacion de bins
\t2) Informacion de un bin
\t3) Gen CC's apartir de un bin
\t4) Checker
\t5) Ejecutar todos en el siguiente orden: 1,2,3 y 4
\t6) Verificacion de luhn
\t99) Menu principal"
LOGOCARD = '
        ______                          __ __
        /      \                        |  \  \
        |  ▓▓▓▓▓▓\ ______   ______   ____| ▓▓\▓▓_______   ______
        | ▓▓   \▓▓|      \ /      \ /      ▓▓  \       \ /      \
        | ▓▓       \▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ▓▓▓▓▓▓▓ ▓▓ ▓▓▓▓▓▓▓\  ▓▓▓▓▓▓\
        | ▓▓   __ /      ▓▓ ▓▓   \▓▓ ▓▓  | ▓▓ ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓
        | ▓▓__/  \  ▓▓▓▓▓▓▓ ▓▓     | ▓▓__| ▓▓ ▓▓ ▓▓  | ▓▓ ▓▓__| ▓▓
        \▓▓    ▓▓\▓▓    ▓▓ ▓▓      \▓▓    ▓▓ ▓▓ ▓▓  | ▓▓\▓▓    ▓▓
         \▓▓▓▓▓▓  \▓▓▓▓▓▓▓\▓▓       \▓▓▓▓▓▓▓\▓▓\▓▓   \▓▓_\▓▓▓▓▓▓▓
                                                       |  \__| ▓▓
                                                        \▓▓    ▓▓
                                                         \▓▓▓▓▓▓
'
MENUCARD="
\n Escoje una opcion del menu
\n\t 1) Phising
\t 2) SPAM a emails
\t 3) Identidad
\t 99) Menu principal"
$confirmacionl = $platform.linux?
LOGOINFO='
                    / \-------------------,
                    \_,|                  |
                       |    informacion   |
                       |  ,-----------------
                       \_/________________/
                       '
MENUINFO="
\n Escoje una opcion
\n\t 1) Acerca de
\t 2) Creditos
\t 3) Informacion del sistema
\t 4) Ayuda"
LOGOCRACK='
_________                       __   ___________              __          
\_   ___ \____________    ____ |  | ____    ___/ ____   ____ |  |   ______
/    \  \/\_  __ \__  \ _/ ___\|  |/ / |    |   / __ \ / __ \|  |  /  ___/
\     \____|  | \// __ \_  \___|    \  |    |  (  \_\ )  \_\ )  |__\___ \ 
 \______  /|__|  (____  /\___  /__|_ \ |____|   \____/ \____/|____/____  \
        \/            \/     \/     \/                                 \/ 
'
MENUCRACK="
\n Escoje una opcion
\n\t 1) Generar lista de proxys
\t 2) Decifrador de HASH
\t 3) Generador de combos
\t 99) Menu principal"
ACERCAD='

       __     ___  ____  ____   ___    __        ____   ____ 
      /__\   / __)( ___)(  _ \ / __)  /__\      (  _ \ ( ___)
     /(  )\ ( (__  )__)  )   /( (__  /(  )\      )(_) ) )__) 
    (__)(__) \___)(____)(_)\_) \___)(__)(__)    (____/ (____)
'
LOGOCREDITOS="
 ██████╗██████╗ ███████╗██████╗ ██╗████████╗ ██████╗ ███████╗
██╔════╝██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝██╔═══██╗██╔════╝
██║     ██████╔╝█████╗  ██║  ██║██║   ██║   ██║   ██║███████╗
██║     ██╔══██╗██╔══╝  ██║  ██║██║   ██║   ██║   ██║╚════██║
╚██████╗██║  ██║███████╗██████╔╝██║   ██║   ╚██████╔╝███████║
 ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝   ╚═╝    ╚═════╝ ╚══════╝"
#Funciones
def init()
    puts("#{$limpiar}")
    puts("#{LOGO} #{INICIO} #{MENUS}")
    print("\nNumero de seccion: ")
    op = gets.chomp
    sepa(op)
end

#Distribuidor de secciones
def sepa(opc)
    case opc
    when "1"
        seccs()
    when "2"
        seccard()
    when "3"
        seccrack()
    when "4"
        seccinfo()
	    h = gets.chomp
        init()
    when "99"
        puts("\nSPAM "* 50)
        exit
    when "exit"
        puts "Ok..."
        exit
    else
        puts "#{$err} > [2]\nIntenta de nuevo"
        sleep 3
        init()
    end
end

#Seccion Ccs
def seccs()
    puts("#{$limpiar} #{LOGOCCS} #{MENUC}")
    print("\nElige tu opcion: ")
    op = gets.chomp

    #Separacion de las opciones

    case(op)
    when "1"
        extra()
    when "2"
        provi()
    when"3"
        gencc()
    when "4"
        #checkc(), esta en fase de desarrollo
        puts"Esta funcion se encuentra en desarrollo"
        sleep 2
        seccs()
    when "5"
        todoc()
    when "6"
        luhncc()
    when "99"
        init()
    when "100"
        checkc()
    when "exit"
        puts "Ok..."
        exit
    else
        puts "#{$err} > [2]\nIntenta de nuevo"
        sleep 3
        seccs()
    end
end
def gencc()
    puts("Ingresa tu bin con el siguiente formato, por defcto la \nFECHA y CCV son random y cantidad son 5 \nBIN;FECHA;CCV;CANTIDAD-DE-CCS-GENERADAS")
    gen = gets.chomp
    form = gen.split(";")
    $cc = form[0]
    $fecha = form[1]
    $ccv = form[2]
    $cad = form[3].to_i
    $limi = 6
    $i = 0
    $o = 0
    puts("Tu tarjeta(s) es(son):\n  ")

    begin
        while $i < $limi do
            num = rand(9)
            num = num.to_s
            $cc = $cc + num
            $i +=1
        end
        puts("#{$cc}|#{$fecha}|#{$ccv}")
        $o += 1
    end while $o < $cad

    no = gets.chomp
    if $seccioncc == true
        seccs()
    else
        seccs()
    end
end
def provi()
    puts("Ingresa el bin que deseas obtener informacion")
    bin =  gets.chomp
    puts("Obteniendo informacion...")
    #Comprobando coneccion con la API
    begin
        uri = URI.parse("https://lookup.binlist.net/#{bin}")
        request = Net::HTTP::Get.new(uri)
        request["Accept-Version"] = "3"
        
        req_options = {
          use_ssl: uri.scheme == "https",
        }
        
        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
        
    rescue Exception => e
        puts"#{$err}> [1.0]\nPor #{e.message}\nNo se pudo establecer conexion con las API de binlist.net"
        sleep 3
        seccs()
    end
    info = JSON.parse(response.body)
    bank = info["bank"]
    pais = info["country"]
    puts ("
    Tipo de empresa: #{info["scheme"]}
    Tipo: #{info["type"]}
    Marca: #{info["brand"]}
    Prepago: #{info["prepaid"]}
    Pais: #{pais["name"]}  #{pais["alpha2"]} #{pais["currency"]}
    Banco: #{bank["name"]}  #{bank["url"]} #{bank["city"]} #{bank["phone"]}

    ")
    no = gets.chomp
    if $seccioncc == true
        gencc()
    else
        seccs()
    end
end
def extra()
    puts("Este metodo requiere 2 CCs, las cuales comunmente son expedidas entre Octubre 2016 a Febrero 2017")
    puts("De preferencia que sea expedida entre un rango de 5 meses como maximo")
    puts("Ejemplo:
    T1: 49151101 76928790
    T2: 49151101 91768499
        |  BIN |\n")
    print("T1: ")
    t1 = gets.chomp
    print("T2: ")

    #separador
    t2 = gets.chomp
    t1S = t1.split(" ")
    bin = t1S.first
    t1S = t1S.last.chars
    t2S = t2.split(" ")
    t2S = t2S.last
    bin = bin.chars
    t2S = t2S.chars

    #multiplicacion v2
    c = []
    bin.each_index do |var|
        c << bin[var].to_i* t2S[var].to_i
    end
    c = c.join
    c = c.chars
    pri = t1S
    resultado = []
    pri.each_index do |i|
        if pri[i] == c[i]
            resultado << pri[i]
        else
            resultado << "x"
        end
    end
    if resultado[7] == "x"
        resultado[7] = "1"
    else
        h = 0
    end
    puts("Tu resultado es:
    #{bin.join + resultado.join}")
    #tanks ajolotes
    puts("Metodo by: Axolotl")
    h = gets
    if $seccioncc == true
        provi()
    else
        seccs()
    end
end
def todoc()
    puts("Ejecutando...")
    $seccioncc = true
    extra()
end
def checkc()
    puts("Ingresa la cc que quieres checar")
    print("[cc]>> ")
    cc = gets.chomp
    #Codigo del generador de emails https://github.com/navisecdelta/EmailGen
    require './libs/Emailgen/EmailGen.rb'
    puts "Borrando lista de Emails anteriores."
    if File.exist?("./correos.txt")
        File.delete("./correos.txt")
    else
        puts "..."
    end
    puts "Generando emails..."
    mailgen()
    puts "Leyendo la lista de emails ..."
    lista = File.read("./correos.txt")
    lista = lista.split("\n")
    puts "Correo a utilizar es: #{lista[0]}"
end
def luhncc()
    puts "Verificacion de luhn o de modulo 10"
    print "\nCC que quieras verificar: "
    cc = gets.chomp.chars
    pares = [0,"1",2,"3",4,"5",6,"7",8,"9",10,"11",12,"13",14,"15"]
    multil0 = []
    multil1 = []
    #multiplicacion
    cc.each_index do |i|

        if i == pares[i]

          swap = []
          swap << cc[i].to_i * 2
          swap[0] = swap[0].to_s
          swap = swap[0].chars

          multil1 << swap[0].to_i + swap[1].to_i
        else
            multil0 << cc[i].to_i
        end
    end

    #suma

    sum = [0]

    multil0.each_index do |o|
        nue = sum[0]
        sum[0] = multil0[o] + multil1[o] + nue
    end
    resultado0 = sum[0].to_s
    resultado = resultado0.chars

    #Buscando el numero posible
    puesto = cc.last
    resultadoN = resultado0.to_i - puesto.to_i
    falta = resultadoN-100
    falta = falta.to_s; falta = falta.chars; falta = falta.last
    #Resultado del check
    if resultado.last == "0"
        puts"✅"
    else
        puts"❌"
        puts "Intenta colocar #{falta} como la ultima cifra"
    end

    print "No viste nada? Intenta instalar y/o configurar unicode"
    h = gets
    seccs()
end
#seccion de carding
def seccard()
    puts "#{$limpiar}#{LOGOCARD} #{MENUCARD}\n"
    print"\nElige tu opcion: "
    opc = gets.chomp
    case(opc)
        when "1"
            phishing()
        when "2"
            spama()
        when "3"
            idp()
        when "99"
            init()
        when "exit"
            puts "Ok..."
            exit
        else
            puts "#{$err} > [2]\nIntenta de nuevo"
            sleep 3
            seccard()
        end
    def phising()
        #Phishing by @suljot_gjoka & @thelinuxchoice (blakeye)
        puts "Ejecutando phishing"

    end
end

def phishing()
    puts"Puedes conocer las acciones que realizar el script en:
    localhost:4040 o 127.0.0.1:4040"
    print "-- ENTER para continuar --"
    h = gets
    puts"#{$limpiar}"
    puts "\t\t\tBLACKEYE v1.5 BY: An0nUD4Y"
    puts"\n"
    system("bash commands.sh 0")
end

def spama()
    #Necesario python 2
    puts "Necesitas crear el correo (Contenido) en un .txt o .html
    Es recomendable que tengas una cuenta de www.smtp2go.com ya que la cuenta por defecto es posbile que no funciones
    Una vez que tengas esto presiona cualquier tecla"
    h = gets
    system("bash commands.sh 1")
end

def idp()
    puts "Generando datos..."
    puts"#{$limpiar}
    \t\t--==[ Datos ]==--

    \tNombre: #{Faker::Name.name}
    \tDireccion: #{Faker::Address.full_address}
    \tGenero: #{Faker::Gender.binary_type}
    \tNacimiento : #{Faker::Date.birthday(min_age: 18, max_age: 65)}
    \tTelefono: #{Faker::PhoneNumber.cell_phone}

    \t\t--==[ Internet ]==--

    \tCorreo: #{Faker::Internet.email}
    \tUsername: #{Faker::Internet.username}
    \tPassword: #{Faker::Internet.password}
    \tIP: #{Faker::Internet.ip_v4_address}
    \tDireccion MAC: #{Faker::Internet.mac_address}
    \tUser agent: #{Faker::Internet.user_agent}

    \t\t--==[ Educacion ]==--

    \tGrado de estudios: #{Faker::Job.education_level}
    \tUniversidad: #{Faker::Educator.university}
    \tCampus: #{Faker::Educator.campus}
    \tEstudia: #{Faker::Educator.subject}

    \t\t--==[ Trabajo ]==--

    \tTrabaja en: #{Faker::Company.name}
    \tPuesto: #{Faker::Job.position}
    \tSIC de la compania: #{Faker::Company.sic_code}

    \t\t--==[ Vehiculo ]==--

    \tMarca y modelo: #{Faker::Vehicle.make_and_model}
    \tColor: #{Faker::Vehicle.color}
    \tAño: #{Faker::Vehicle.year}
    \tLicense plate: #{Faker::Vehicle.license_plate }

    -- ENTER para continuar --"
    h = gets
    seccard()
end
#Separador del cracktools
def seccrack()
    puts "#{$limpiar} #{LOGOCRACK} #{MENUCRACK}"
    print "\nEscribe tu opcion: "
    opc = gets.chomp
    case (opc)
    when "1"
        proxy()
    when "2"
        hash5() #no dejar como hash() puede causar errores
    when "3"
        combos()
    when "99"
        init()
    when "exit"
        puts "Ok..."
        exit
    else
        puts "#{$err} > [2]\nIntenta de nuevo"
        sleep 3
        seccard()
    end
end
#Lista de proxys
def proxy()
    puts"\nQue tipo de proxy quieres? [http/Socks4]"
    tipo = gets.chomp
    puts"Ingresa el codigo del pais que deseas la lista. Por ejemplo US"
    codigo = gets.chomp
    puts "Generando lista..."

    #Generando:

    uri = URI.parse("https://api.proxyscrape.com?request=getproxies&proxytype=#{tipo}&timeout=10000&country=#{codigo}&anonymity=anonymous&ssl=yes")
    response = Net::HTTP.get_response(uri)
    lista = response.body

    puts"Lista de proxys
    #{lista}"
    print"-- ENTER para continuar --"
    h = gets
    seccrack()
end
def hash5()
    puts "https://md5hashing.net/"
    print"-- ENTER para continuar --"
    h = gets
    seccrack()
end
def combos()
    puts"Es necesario utilizar VPN para ejecutar este programa, enter cuando estes listo"
    h = gets
    system("bash commands.sh 2")
end
#Separador informacion
def seccinfo()
    puts "#{$limpiar}#{LOGOINFO} #{MENUINFO}"
    print "\n\nElige una opcion: "
    opc = gets.chomp
    case(opc)
        when"1"
            AcercaD()
        when "2"
            creditos()
        when "3"
            infoSistem()
        when "4"
            help()
        when "5"
            seccs()
        when "exit"
            puts "Ok..."
            exit
        else
            puts "#{$err} > [2]\nIntenta de nuevo"
            sleep 3
            seccinfo()
        end
end

#Acerda de
def AcercaD()
    puts $limpiar
    puts "#{ACERCAD}"
    puts "\n\n\n\t\t Tool Acuont Cracking (Tool-AC). \n\t\t Repositorio: https://github.com/kedap/Tool-AC
    \n\tAutor v1.1.1-beta: Kedap (דנטה)
    \tPara: Team Movistar
    \tHerramienta oficial de: Team Movistar 
    \n\tEsta herramienta fue creada para la facilitacion de cuentas relacionadas para el Carding y el Bineo"
    print"\n\n --ENTER para continuar--"
end
def creditos()
    puts"."*200
    puts"#{$limpiar} #{LOGOCREDITOS}
     _____ _____ _     
    |  _  |  _  | |___ 
    |     |   __| |_ -|
    |__|__|__|  |_|___|
                       

    Informacion de BINs: binlist.net
    Informacion de IP: ipify.org
    Informacion MAC: macaddress.io

     _____                   
    |   __|___ _____  __ ___ 
    |  |  | -_|     ||. |_ -|
    |_____|___|_|_|_|___|___|
                         

    Colores del texto (colorize): fazibear con grandiosos contribuidores
    Informacion de la maquina (tty-platform): Piotr Murach
    Procesamientos de datos (json): Florian Frank
    Generador de informacion faltas (faker): Comunidad

     _____     _ _             _                 
    |  _  |___| |_|___  __ ___|_|___ ___ ___ ___ 
    |     | . | | |  _||. |  _| | . |   | -_|_ -|
    |__|__|  _|_|_|___|___|___|_|___|_|_|___|___|
          |_|                                    

    Phising (Blackeye fork): An0nUD4Y
    Generador de Emails: pry0cc 
    Generador de combos: Juni0r007


     _____     _           
    |  _  |_ _| |_ ___ ___ 
    |     | | |  _| . |  _|
    |__|__|___| | |___|_|  


    Kedap (דנטה)
    "
end
def infoSistem()
    #Informacion de IP
    puts "Obteniendo datos de direccion IP..."
    
    #Error en caso de que no haya una coneccion a internet
    begin
        uri = URI.parse("https://geo.ipify.org/api/v1?apiKey=at_zHp76XWLxoXxj9FwoEs76ZCs7lTnn&ipAddress=#{$ip} ")
    rescue Exception => e
        puts "#{$err} > [1.0 | 1.0.1]\nPor: #{e.message}\nAl parecer no tienes internet. No se puede obtener informacion de informacion IP"
        sleep 3
        seccinfo()
    end
    request = Net::HTTP::Get.new(uri)

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end
    inputip = JSON.parse(response.body)
    geoip = inputip["location"]
    uno = inputip["as"]
    clienteip = uno["domain"]
    proxyip = inputip["proxy"]

    #Informacionde direccion MAC

    puts "Obteniendo datos de direccion MAC..."
    uri = URI.parse("https://api.macaddress.io/v1?apiKey=at_iVLS5CtmOkLSowBmFUrXPzYdSlTjg&output=json&search=#{$mac}")
    request = Net::HTTP::Get.new(uri)

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end
    macinput = JSON.parse(response.body)
    macvendedor = macinput["vendorDetails"]
    macdata = macinput["blockDetails"]
    macdata = macdata["dateCreated"]
    #Resultados
    puts "\n#{$limpiar}Direccion IP: #{$ip}
    \n Lugar
    \n\tPais: #{geoip["region"]} #{geoip["country"]}
    \tCiudad: #{geoip["city"]} CP/Zip: #{geoip["postalCode"]}
    \n Provedor
    \n\tProvedor: #{clienteip}
    \n Configuracion de Proxy
    \n\tProxy: #{proxyip["proxy"]}
    \tVPN: #{proxyip["vpn"]}
    \tTor: #{proxyip["tor"]}"
    puts"\nDireccion MAC: #{$mac}
    \n Informacion
    \n\tCompania: #{macvendedor["companyName"]}
    \tDireccion de la compania: #{macvendedor["companyAddress"]}
    \tPais de origen: #{macvendedor["countryCode"]}
    \tFecha: #{macdata}"
end
def help()
    puts"Si tienes dudas o sugerencias te puedes contactar con:

    @Kedap_Develop en telegram

    Pero es recomendable que lo hagas aqui: https://github.com/Kedap/Tool-AC/issues" 
end
#Inicio de programa
init()
#القصّة جمّرت من شرارة
#نريد للسّلطة الحاكمة أن تُنفَى
#من شرارة