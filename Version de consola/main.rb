#Version 1.1.0-aplha: 1- Script version, 1- Entrono facil, 0- Correccion 

########################################
##                                    ##
## Contribuidores:                    ##
## Danii Avellana. Team Obsidian      ##
##                                    ##
########################################
$limpiar = "\e[H\e[2J"
puts("#{$limpiar}")


#dependencias (gemas)
require 'colorize'
require 'tty-platform'
require 'ipaddr'
require 'macaddr'


#cURL -H
require 'net/http'
require 'uri'
require 'json'

#Clases de dependencias
$platform = TTY::Platform.new
$ipaddr1 = IPAddr.new "127.0.0.1"

#Variables de texto
msgran = ["v1.1-alpha","Hola gamer", "Esta va para el admin .|.","All you need is love, all you need is hope","Hey bro, nice dick","F","11","Hecho en Mexico","ReadOS <3","Cambiate a movistar plz","Feliz cumpleaños", "Alse try evil-sofia","Version de Consola","100% libre de gluten", "H4ck th3 W0rld","Bebesita bebelin","Hello Moto","Boca sho te amo","Star <3","Power by #TeamObsidian","Don't worry, be happy"]
hora =  Time.now.strftime("%R")
OSV = $platform.version
OS = $platform.os
ip = $ipaddr1.to_s
mac = Mac.addr 

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
\t Time: #{hora.to_s.colorize(:white)}  Os: #{OS.to_s.colorize(:white)} #{OSV.to_s.colorize(:white)} Ip: #{ip.colorize(:white)} Mac Addres: #{mac.to_s.colorize(:white)}" 
MENUS = "
\n Escoje una seccion del menu
\n \t1) CC'S
\t2) Carding
\t3) HackTools
\t4) CrackTools
\t5) Acerca de y creditos
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
#Funciones
def init()
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
        puts("Hola")
    when "99"
        puts("\nSPAM "* 20)
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
#seccion de carding
def seccard()
    puts "#{$limpiar}#{LOGOCARD} #{MENUCARD}\n"
    print"\nElige tu opcion: "
    opc = gets.chomp
    case(opc)
        when "1"
            puts "Hola"
        when "2"
            puts "Hola"
        when "3"
            puts "Hola"
        when "4"
            puts "Hola"
        when "99"
            puts "Hola"
        else
            puts "Incorrecto pana"
        end
    def phising()
        #Phishing by @suljot_gjoka & @thelinuxchoice (blakeye)
        puts "Ejecutando phishing"
        
    end
end
#Inicio de programa
init()
#Bro me siento triste :(