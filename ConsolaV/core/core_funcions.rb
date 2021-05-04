# Funciones fundamentales para tool-ac

#Requires
require 'pathname'
require 'colorize'
require 'tty-platform'
require 'net/http'
require 'uri'

# Variables globales
$path_core = Pathname.new(__FILE__).realpath.parent
$version = "1.2.0"
$platform = TTY::Platform.new
$hora =  Time.now.strftime("%R")
OSV = $platform.version
OS = $platform.os
$mac = Mac.addr
$limpiar = "\e[H\e[2J"

#Funciones
def limpiar
	puts $limpiar
end

def error(msg)
	puts "#{"[-]".red} #{msg.red}"
end

def warm(msg)
	puts "#{"[!]".yellow()} #{msg.yellow}"
end

def info(msg)
	puts "#{"[*]".cyan()} #{msg.cyan}"
end

def pregunta(msg)
	print "#{msg.yellow()} #{"[S/n] ".yellow}"
	opc = gets.chomp
	if opc == "S" || opc == "s"
		return true
	else
		return false
	end
end

#Checando coneccion a internet y obtener direccion IP

begin
    $ip = Net::HTTP.get(URI("https://api.ipify.org"))
rescue Exception => e
    error "Error: #{e.message}\nLas herramientas no se ejecutaran correctamente"
    $ip = "No Disponible"
    sleep 4
end

#Variables laargas
$array_msg = ["v#{$version}","Hola gamer", "Esta va para el admin .|.", "msgdon.sample","Power by #TeamMovistar",
"All you need is love, all you need is hope","Hey bro, nice dick","F","11","NO!","Hecho en Mexico",
"SIIIIIII!","Sin miedo al exito","Linux <3","Cambiate a movistar plz","Feliz cumpleaños","2.2",
"Alse try evil-sofia","Version de Consola","100% libre de gluten", "H4ck th3 W0rld","T I E M P O O ! ! !",
"Bebesita bebelin","Hello Moto","Boca sho te amo",":(","Obsidian", "No hay chiste","I love programing",
"Don't worry, be happy"," ","UwU","No hay sistema joven","Hola wap@","Una troca salio de durango...",
"Al toke mi rey","En efecto compañero","Esta va para el que lo lea <3","[Mensaje random]", "RubRub?",
"Puto el que lo lea","Un saludo para toda la banda","Un saludo para la grasa","Are you win son?",
"SOFTWARE LIBRE","El original","Con linki park de fondo","Nice!", "Echale ganas mijo","Ojos color sol",
"نريد التغيير!","RubRuby"]

def menu_prinicipal
	limpiar
	puts "

                     ┏━━━━┓━━━━━━━━┏┓━━━━━━┏━━━┓┏━━━┓
                     ┃┏┓┏┓┃━━━━━━━━┃┃━━━━━━┃┏━┓┃┃┏━┓┃
                     ┗┛┃┃┗┛┏━━┓┏━━┓┃┃━━━━━━┃┃━┃┃┃┃━┗┛
                     ━━┃┃━━┃┏┓┃┃┏┓┃┃┃━┏━━━┓┃┗━┛┃┃┃━┏┓
                     ━┏┛┗┓━┃┗┛┃┃┗┛┃┃┗┓┗━━━┛┃┏━┓┃┃┗━┛┃
                     ━┗━━┛━┗━━┛┗━━┛┗━┛━━━━━┗┛━┗┛┗━━━┛
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
\t \t \t\t\t\t#{$array_msg.sample.yellow}
\n\t\t  Github: https://github.com/m4rklean/Tool-AC
\tHora: #{$hora.to_s.colorize(:white)}  Os: #{OS.to_s.colorize(:white)} #{OSV.to_s.colorize(:white)} Ip: #{$ip.colorize(:white)} Mac Addres: #{$mac.to_s.colorize(:white)}
\n Escoje una seccion del menu
\n \t1) CC'S
\t2) Carding
\t3) CrackTools
\t4) Acerca de, creditos e informacion del sistema
\t99) Salir"
	print("\nNumero de seccion: ")
    op = gets.chomp
    return op
end