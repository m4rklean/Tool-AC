#Version 1.2.0: 1- Script version, 2- Optimizacion de codigo, 0- Commit Errores

########################################################
##                                                    ##
## Contribuidores:                                    ##
## Kedap דנטה.Team Movistar                           ##
##                                                    ##
########################################################

#dependencias 
require 'pathname'
require Pathname.new(__FILE__).realpath.parent.join("core_funcions.rb")
require $path_core + "clases.rb"
require $path_core + "clases_funciones.rb"

#Icono de error
$err = "::".colorize(:red)

BANNERCC ="
\n\t\t\t ░░░░░░  ░░░░░░     ░░░░░░░
\t\t\t▒▒      ▒▒          ▒▒
\t\t\t▒▒      ▒▒          ▒▒▒▒▒▒▒
\t\t\t▓▓      ▓▓               ▓▓
\t\t\t ██████  ██████     ███████ 
\n Escoje una opcion del menu
\n \t1) Informacion de un bin
\t2) Gen CC's apartir de un bin
\t3) Verificacion de luhn
\t4) Ejecutar todos en el siguiente orden: 1,2 y 3
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
\t 2) Identidad
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
\t 2) Generador de combos
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


#Distribuidor de secciones
def sepa(opc)
    case opc
    when "1"
        no_error = false
        while no_error == false
            no_error = true
            limpiar
            seccion_cc = Cc.new("cc", BANNERCC, 4)
            numero_seccion = seccion_cc.print_menu().to_i
            no_error = seccion_cc.funcion(numero_seccion)
        end
        main()
    when "2"
        no_error = false
        while no_error == false
            no_error = true
            limpiar
            banner = LOGOCARD + MENUCARD
            seccion_cc = Carding.new("carding",banner , 2)
            numero_seccion = seccion_cc.print_menu().to_i
            no_error = seccion_cc.funcion(numero_seccion)
        end
        main()
    when "3"
        no_error = false
        while no_error == false
            no_error = true
            limpiar()
            banner = LOGOCRACK + MENUCRACK
            seccion_crack = Cracktool.new("cracktool", banner, 2)
            numero_seccion = seccion_crack.print_menu().to_i
            no_error = seccion_crack.funcion(numero_seccion)
        end
        main()
    when "4"
        no_error = false
        while no_error == false
            no_error = true
            limpiar()
            banner = LOGOINFO + MENUINFO
            seccion_info = Informacion.new("informacion", banner, 4)
            numero_seccion = seccion_info.print_menu().to_i
            no_error = seccion_info.funcion(numero_seccion)
        end
        main()
    when "99"
        puts("\nSPAM "* 50)
        exit
    when "exit"
        puts "Ok..."
        exit
    else
        error ("Intenta de nuevo")
        opc = menu_prinicipal
        sepa(opc)
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
        provi()
    when"2"
        gencc()
    when "3"
        #checkc(), esta en fase de desarrollo (es una posible colaboracion con https://shadowchk.com/)
        puts"Esta funcion se encuentra en desarrollo, es posible que tengamos soporte con shadowchk.com"
        sleep 2
        seccs()
    when "5"
        todoc()
    when "4"
        luhncc()
    when "99"
        init()
    when "exit"
        puts "Ok..."
        exit
    else
        puts "#{$err} > [2]\nIntenta de nuevo"
        sleep 3
        seccs()
    end
end

def todoc()
    puts("[+] Ejecutando todas las opciones...")
    $todo = true
    provi()
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
end

#Lista de proxys
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
    print"--ENTER para continuar--"; h = gets
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
    print"--ENTER para continuar--"; h = gets
end
def help()
    puts"Si tienes dudas o sugerencias te puedes contactar con:

    @Kedap_Develop en telegram

    Pero es recomendable que lo hagas aqui: https://github.com/Kedap/Tool-AC/issues" 
end

def main
    opcion = menu_prinicipal()
    sepa(opcion)
end

#Inicio de programa
main()
#القصّة جمّرت من شرارة
#نريد للسّلطة الحاكمة أن تُنفَى
#من شرارة