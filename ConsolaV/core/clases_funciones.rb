# Clases en donde bienen las funciones

require 'pathname'
require Pathname.new(__FILE__).realpath.parent.join("core_funcions.rb")
require $path_core + 'clases.rb'
require 'net/http'
require 'uri'
require 'json'
require 'faker'

class Cc < Seccion
	def funcion(numero)
		if numero <= @numero_opciones || numero == 99
			case numero
			when 1
				bin_info
			when 2
				gen_cc
			when 3
				luhn
			when 4
				todo
			when 99
				return true
			end
			return false
		else
			error "Ingresa un numero valido!"
			sleep 2
			return false
		end
	end
	def bin_info
		puts "Ingresa el bin que quieras obtener informacion"
		print "BIN => "; bin = gets.chomp
		info "Obteniendo informacion sobre el bin #{bin}"
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
    	rescue Exception => e #Interrupt
    	    error ("Error: #{e.message}\nUn error al tener conexion con las API de binlist.net")
    	    sleep 2
    	end
    	begin
    		infor = JSON.parse(response.body)
    		bank = infor["bank"]
    		pais = infor["country"]
    	rescue Exception => e
    		error ("Al parecer no escribiste bien el bin.\nInfo: #{e.message}")
    		sleep 2
    		bin_info
    	end
    	puts ("
    	\t--==[ Informacion del BIN => #{bin} ]==--\n
    	Tipo de empresa: #{infor["scheme"]}
    	Tipo: #{infor["type"]}
    	Marca: #{infor["brand"]}
    	Prepago: #{infor["prepaid"]}
    	Pais: #{pais["name"]}  #{pais["alpha2"]} #{pais["currency"]}
    	Banco: #{bank["name"]}  #{bank["url"]} #{bank["city"]} #{bank["phone"]}
    	")
    	print "\n--ENTER para continuar--";no = gets.chomp
	end
	def gen_cc
		puts "Para generar tu CC debes de colocarlo en el siguiente formato, los datos no especificados son random"
		puts "Formato: BIN;FECHA;CVV;CANTIDAD"
		print "\ntoolgen> "; input = gets.chomp
		begin
			input = input.split(";")
			bin = input[0]; fecha = input[1]; cvv = input[2]; $cantidad = input[3].to_i
		rescue Exception
			error("Algo a fallado al leer la entrada, porque no intentas de nuevo?")
			sleep 2
			gen_cc
		end
		bin = bin.chars
		if bin.length <= 16
			info "Generando CC's..."
		else
			error("Deam! Una CC de 16 digitos?")
			sleep 2
			gen_cc
		end
		$i = 0
		$l = 0
		cc = ""
		puts "\n\t--==[ CC gen de Tool-AC ]==--"
		puts ""
		while $l < $cantidad
			while $i <= 15
				if bin[$i] == "x" || bin.length < $i
					numero = rand(9)
					cc = cc + numero.to_s
				else
					cc = cc + bin[$i].to_s
				end
				$i = $i + 1
			end
			puts "#{cc}|#{fecha}|#{cvv}"
			cc = ""
			$i = 0
			$l = $l + 1
		end
		print "\n--ENTER para continuar--"; h = gets
	end
	def luhn
		puts "Verificiacion de luhn o de modulo 10, la CC para verificar"
		print "CC => "; cc = gets.chomp.chars
		info "Realizando la suma de luhn..."
		pares = [0,"1",2,"3",4,"5",6,"7",8,"9",10,"11",12,"13",14,"15"]
		suma = 0
		cc.each_index do |i|
			if i != pares[i]
				suma = suma + cc[i].to_i
			else
				resultado = cc[i].to_i * 2
				resultado = resultado.to_s.chars
				if resultado.length == 2
					resultado = resultado[0].to_i + resultado[1].to_i
					suma = suma + resultado
				else
					suma = suma + resultado.join.to_i
				end
			end
		end
		
		ultima_cifra = suma.to_s.chars.last
		#puts suma
		resultado_resta = suma - cc.last.to_i
		cifra_faltante = resultado_resta - 100
		cifra_faltante = cifra_faltante.to_s.chars.last
		if ultima_cifra.to_i == 0
			puts "Verificiacion pasada ✅"
		else
			puts "La verificiacion fue fallida ❌"
			puts "Intenta con #{cifra_faltante} en la ultima cifra!"
		end
		print "\n--ENTER para continuar--"; enter = gets.chomp
	end
	def todo
		info "Ejecutando todo..."
		bin_info; gen_cc; luhn;
	end
end

class Carding < Seccion
	def funcion(numero)
		if numero <= @numero_opciones || numero == 99
			case numero
			when 1
				phising
			when 2
				informacion
			when 99
				return true
			end
			return false
		else
			error "Ingresa un numero valido :|"
			sleep 2
			return false
		end
	end
	def phising
		puts "Ejecutando blackeye..."
		case (Process.uid)
		when 0
			comando_blakeye = system("blackeye")
			if comando_blakeye.nil? == true
				puts "Debes de tener instalado blackeye, porque no lo descargas con apmpkg?"
				info "apmpkg instalar -u https://anonfiles.com/Z0If7bu2ud/blackeye-dfcd567.abi.tar_gz"
			end
		else
			comando_blakeye = system("sudo blackeye")
			if comando_blakeye.nil? == true
				puts "Debes de tener instalado blackeye, prueba con esto"
				info "sudo apmpkg instalar -u https://anonfiles.com/Z0If7bu2ud/blackeye-dfcd567.abi.tar_gz"
			end
		end
	end
	def informacion
		info "Generando informacion..."
		#limpiar
		puts"
			\t--==[ Datos ]==--
	
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
	    	\tLicense plate: #{Faker::Vehicle.license_plate }"
    	print "--ENTER para continuar--"; h = gets
	end
end

class Cracktool < Seccion
	def funcion(numero)
		if numero <= @numero_opciones || numero == 99
			case numero
			when 1
				gen_proxy
			when 2
				gen_combos
			when 99
				return true
			end
			return false
		else
			error "Ingresa un numero valido!"
			sleep 2
			return false
		end
	end
	def gen_proxy
		puts "Que tipo de proxy quieres? [http/Socks4]"
		print "TIPO => "; tipo = gets.chomp
		puts "Ingresa el codigo del pais del proxy que quieres, un ejemplo es US"
		print "PAIS => "; pais = gets.chomp
		info "Generando lista..."
		begin
			uri = URI.parse("https://api.proxyscrape.com?request=getproxies&proxytype=#{tipo}&timeout=10000&country=#{pais}&anonymity=anonymous&ssl=yes")
			response = Net::HTTP.get_response(uri)
		rescue Exception => e
			error "Ocurrio un error al tener conexion con proxytype.com\nPor: #{e.message}"
		end
		puts "Lista de proxys..."
		puts response.body
		print "\n-- ENTER para continuar --"; enter = gets.chomp
	end
	def gen_combos
		info "Iniciando el generador de combos"
		system("php #{$path_lib}/PasTerm/pasterm.php")
	end
end

class Informacion < Seccion
	def funcion(numero)
		if numero <= @numero_opciones || numero == 99
			case numero
			when 1
				acerca_de
			when 2
				creditos
			when 3
				informacion_sistema
			when 4
				ayuda
			when 99
				return true
			end
		else
			error "Elige una opcion correcta!"
			sleep 2
			return false
		end
	end
	def acerca_de
		limpiar()
		puts'

       __     ___  ____  ____   ___    __        ____   ____ 
      /__\   / __)( ___)(  _ \ / __)  /__\      (  _ \ ( ___)
     /(  )\ ( (__  )__)  )   /( (__  /(  )\      )(_) ) )__) 
    (__)(__) \___)(____)(_)\_) \___)(__)(__)    (____/ (____)'

    	puts "\n\n\n\t\t Tool Acuont Cracking (Tool-AC). \n\t\t Repositorio: https://github.com/m4rklean/Tool-AC
    	\n\tAutor original: v1.1.1-beta: y4ot3t1
    	\tFork y mejorado por: m4rklean
    	\n\tEsta herramienta fue creada para la facilitacion de cuentas relacionadas para el Carding y el Bineo"
    	print "\n--ENTER para continuar --"; enter = gets.chomp
	end
	def creditos
		puts "."*200
		limpiar()
		puts "

		 ██████╗██████╗ ███████╗██████╗ ██╗████████╗ ██████╗ ███████╗
		██╔════╝██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝██╔═══██╗██╔════╝
		██║     ██████╔╝█████╗  ██║  ██║██║   ██║   ██║   ██║███████╗
		██║     ██╔══██╗██╔══╝  ██║  ██║██║   ██║   ██║   ██║╚════██║
		╚██████╗██║  ██║███████╗██████╔╝██║   ██║   ╚██████╔╝███████║
		 ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝   ╚═╝    ╚═════╝ ╚══════╝
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
     _____     _           
    |  _  |_ _| |_ ___ ___ 
    |     | | |  _| . |  _|
    |__|__|___| | |___|_|  


    y4ot3t1
    Fork: m4rklean"
    print "\n--ENTER para continuar --"; enter = gets.chomp
	end
	def informacion_sistema
		info "Obteniendo informacion sobre su sistema..."
		begin
			uri = URI.parse("https://geo.ipify.org/api/v1?apiKey=at_zHp76XWLxoXxj9FwoEs76ZCs7lTnn&ipAddress=#{$ip} ")
		rescue Exception => e
			error "Algo fallo al conectar con la api de ipify\nPor: #{e.message}"
			sleep 2
			return false
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

    info "Obteniendo datos de direccion MAC..."
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
    print"--ENTER para continuar--"; enter = gets
	end
	def ayuda
		puts"Si tienes dudas o sugerencias te puedes contactar con:

    	@Kedap_Develop en telegram
	
    	Pero es recomendable que lo hagas aqui: https://github.com/m4rklean/Tool-AC/issues" 
    	print "\n-- ENTER para continuar --"; enter = gets.chomp
	end
end