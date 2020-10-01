#!/usr/bin/env ruby

#Version 1.1.0-aplha: 1- Script version, 1- Entrono facil, 0- Correccion

########################################################
##                                                    ##
## Contribuidores:                                    ##
## Danii Avellana. Team Movistar y Team Obsidian      ##
##                                                    ##
########################################################
$limpiar = "\e[H\e[2J"
puts("#{$limpiar}")
puts("Cargando...")


#dependencias (gemas)
require 'colorize'
require 'tty-platform'
require 'macaddr'


#cURL -H
require 'net/http'
require 'uri'
require 'json'

#Clases de dependencias
$platform = TTY::Platform.new

#Variables de texto
msgran = ["v1.1-alpha","Hola gamer", "Esta va para el admin .|.",
"All you need is love, all you need is hope","Hey bro, nice dick","F","11","NO!","Hecho en Mexico",
"SIIIIIII!","Sin miedo al exito","ReadOS <3","Cambiate a movistar plz","Feliz cumpleaños",
 "Alse try evil-sofia","Version de Consola","100% libre de gluten", "H4ck th3 W0rld","T I E M P O O ! ! !",
 "Bebesita bebelin","Hello Moto","Boca sho te amo","Star <3","Power by #TeamObsidian",
 "Don't worry, be happy"," ","D n E","No hay sistema joven","Hola wap@","Una troca salio de durango...",
"Al toke mi rey","En efecto compañero","Esta va para el que lo lea <3","[Mensaje random]",
"Puto el que lo lea","Un saludo para toda la banda","Un saludo para la grasa","Hey sister, nice clitoris",
"SOFTWARE LIBRE","El original","Con linki park de fondo","Un tal Emilio esta leyendo esto, un saludo ;)",
"Echale ganas mijo"]
hora =  Time.now.strftime("%R")
OSV = $platform.version
OS = $platform.os
$ip = Net::HTTP.get(URI("https://api.ipify.org"))
$mac = Mac.addr

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
\t3) HackTools
\t4) CrackTools
\t5) Acerca de, creditos e informacion del sistema
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
\t 2) SMS Spoofing
\t 3) SPAM a emails
\t 4) Identidad
\t 99) Menu principal"
LOGOSPAM="
\t\t▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄ ▄▄▄ ▄▄▄     ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄   ▄▄
\t\t█       █  █▄█  █      █   █   █   █       █       █      █  █▄█  █
\t\t█    ▄▄▄█       █  ▄   █   █   █   █  ▄▄▄▄▄█    ▄  █  ▄   █       █
\t\t█   █▄▄▄█       █ █▄█  █   █   █   █ █▄▄▄▄▄█   █▄█ █ █▄█  █       █
\t\t█    ▄▄▄█       █      █   █   █▄▄▄█▄▄▄▄▄  █    ▄▄▄█      █       █
\t\t█   █▄▄▄█ ██▄██ █  ▄   █   █       █▄▄▄▄▄█ █   █   █  ▄   █ ██▄██ █
\t\t█▄▄▄▄▄▄▄█▄█   █▄█▄█ █▄▄█▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄█   █▄█ █▄▄█▄█   █▄█
\n\t\t\t\t\t\t\t\t\tBy andrewyli
"
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
        puts("Hola")
    when "4"
        puts("Hola")
    when "5"
        seccinfo()
	h = gets.chomp
    init()
    when "99"
        puts("\nSPAM "* 35)
        exit
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
    when "5"
        todoc()
    when "6"
        luhncc()
    when "99"
        init()
    when "100"
        checkc()
    else
        puts("Error 1")
        init()
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
    puts("Obtenteniendo informacion...")
    uri = URI.parse("https://lookup.binlist.net/#{bin}")
    request = Net::HTTP::Get.new(uri)
    request["Accept-Version"] = "3"

    req_options = {
        use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
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
            spoofsms()
        when "3"
            spama()
        when "4"
            puts "Hola"
        when "99"
            init()
        else
            puts "Incorrecto pana"
            seccard()
        end
    def phising()
        #Phishing by @suljot_gjoka & @thelinuxchoice (blakeye)
        puts "Ejecutando phishing"

    end
end

def phishing()
    puts"#{$limpiar}"
    puts "\t\t\tBLACKEYE v1.5 BY: An0nUD4Y"
    puts"\n"
    if $confirmacionl == true
        system("./libs/Blackeye/blackeye.sh")
    else
        system("$./libs/Blackeye/blackeye.sh")
    end
    seccard()
end
def spoofsms()
    puts "Seleccionando servidor..."
end
def spama()
    #Spam de emails por andrewyli Repositorio: https://github.com/andrewyli/emailSpam
    puts LOGOSPAM
    puts "Este spamer funciona con emails de gmail\n Ejemplo: example@gmail.com"
    print"\nIngresa tu correo:"
    email = gets.chomp
    print"\nTu password"
    password = gets.chomp

    print "\nDestinatario: "
    to = gets.chomp
    puts "\nIngresa el mensaje que desea enviar. Cuando termines presiona la tecla <<tab>>"
    puts ""
    mensaje = gets("\t\n").chomp
    puts "\nDeseas enviar este mensaje [S/n]"
    ok = gets.chomp
    if ok == "n"
        spama()
    else
        puts "\nEnviando..."
    end

    File.open("./libs/Spamer/to.txt", "w") { |f| f.write "#{to}" }
    File.open("./libs/Spamer/youmail.txt", "w") { |f| f.write "['#{email}']"}
    File.open("./libs/Spamer/password.txt", "w") { |f| f.write "#{password}" }
    File.open("./libs/Spamer/message.txt", "w") { |f| f.write "#{mensaje}" }
    if $confirmacionl == true
        system("python2 ./libs/Spamer/forwardSpam.py")
    else
        system("python27 ./libs/Spamer/forwardSpam.py")
    end
end
#Separador informacion
def seccinfo()
    puts "#{$limpiar}#{LOGOINFO} #{MENUINFO}"
    print "\nElige una opcion: "
    opc = gets.chomp
    case(opc)
        when"1"
            puts "Hola"
        when "2"
            puts "Hola"
        when "3"
            infoSistem()
        when "4"
            puts "Hola"
        when "5"
            puts "Hola"
        else
            seccinfo()
        end
end
def infoSistem()
    #Informacion de IP
    puts "Obteniendo datos de direccion IP..."
    uri = URI.parse("https://geo.ipify.org/api/v1?apiKey=at_zHp76XWLxoXxj9FwoEs76ZCs7lTnn&ipAddress=#{$ip} ")
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
#Inicio de programa
init()
#Bro me siento triste :(
