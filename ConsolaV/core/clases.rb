# Clases para cada seccion

#Requires
require 'pathname'
require Pathname.new(__FILE__).realpath.parent.join("core_funcions.rb")

# Clase para cada seccion
class Seccion
	def initialize(nombre,banner,n_opciones)
		@nombre = nombre
		@banner_menu = banner
		@numero_opciones = n_opciones
	end
	def print_menu
		puts @banner_menu
		print "\nElige tu opcion: "
		opc = gets.chomp
		return opc
	end
	def numero_opc
		return @numero_opciones
	end
end