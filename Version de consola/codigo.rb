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
require 'curl'

#Clases de dependencias
platform = TTY::Platform.new
ipaddr1 = IPAddr.new "127.0.0.1"
curl = CURL.new

#Variables de texto
msgran = ["Hola gamer", "Esta va para el admin .|.","Hey bro, nice dick","Hecho en Mexico", "Alse try evil-sofia","100% libre de gluten", "H4ck th3 W0rld","Bebesita bebelin","Hello Moto","Boca sho te amo","Star <3","Power by #TeamObsidian","Don't worry, be happy"]
hora =  Time.now.strftime("%R")
OSV = platform.version
OS = platform.os
ip = ipaddr1.to_s
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
\n Escoje una opcione del menu
\n \t1) Extrapolacion de bins
\t2) Informacion de un bin
\t3) Gen CC's apartir de un bin
\t4) Checker
\t5) Ejecutar todos en el siguiente orden: 1,2,3 y 4
\t99) Menu principal"

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
        puts("Hola")
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
        puts("Hola")
    when "2"
        puts("Hola")
    when"3"
        gencc()
    when "4"
        puts("Hola")
    when "5"
        puts("Hola")
    when "99"
        init()
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
    seccs()
end
#Inicio de programa
init()