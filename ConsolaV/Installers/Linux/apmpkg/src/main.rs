////////////////////////////////////////////////////////////////
// 															  //
// setup A Package Manager how PKGbuild (APMPKG) v1.0.0-beta  //
// autor: Kedap דנטה.Team Movistar							  //
// Un vago intento de pkgbuild                                //
//                                                            //
////////////////////////////////////////////////////////////////

// uses
use read_input::prelude::*;
use std::process;
use std::fs;

fn main() {
	// Variables temporales
	let pack = "tool-ac";
    let host = "debian";
    let channel = "Stable";
    let iversion = "No instalada";
    let version = "1.1.1-beta";
	let ruta = "/home/lo0p3r/Documentos/conte/test.txt";
	let source = "https://github.com/kedap/tool-ac/";
    println!("Las salidas de aqui se utilizaran para la verificacion de variables");
    impresion(host, pack, channel, iversion, version,ruta,source);
}

// Funcion de la impresion para obtener mas informacion de los paquetes

fn impresion(host:&str, paquete:&str, rama:&str, iversion:&str, version:&str, ruta:&str, server:&str){
	println!(" 
	\t\t  _______ _______ __   __ _______ ___   _ _______ 
	\t\t |       |       |  |_|  |       |   | | |       |
	\t\t |   _   |    _  |       |    _  |   |_| |    ___|
	\t\t |  |_|  |   |_| |       |   |_| |      _|   | __ 
	\t\t |       |    ___|       |    ___|     |_|   ||  |
	\t\t |   _   |   |   | ||_|| |   |   |    _  |   |_| |
	\t\t |__| |__|___|   |_|   |_|___|   |___| |_|_______|
	\t\t 
	\n\n
	\t\t\t host detectado: {} 
	\t\t\t        Paquete: {}
	\t\t\t          canal: {} (default)
	\t\t\tVersion instalada: {}
	\t\t\t Version actual: {}
	\n\n
	\t1) Proceder con la instalacion y/o reinstalar
	\t2) Customizar la instalacion
	\t3) Desinstalar version instalada
	\t4) Cancelar\n\n",host,paquete,rama,iversion,version);
	let opc = input::<u32>()
		.msg("Tu opcion: ")
		.err("Ingresa algo valido")
		.get();
	match opc {
		1 => install(paquete,rama,version,ruta,server),
		2 => custom(rama,version,ruta,server,paquete),
		3 => unistall(paquete,ruta),
		4 => {println!("Abortando...");process::exit(0x0100);},
		_ => {println!(":: > [1]"); main();},
	}
}

fn install(paquete:&str, channel:&str, version:&str, ruta:&str, source:&str){
	let size = "1kb";
	println!("Obteniendo mas informacion sobre el paquete:...\n\n
		            Paquete: {}
		              Canal: {}
		     Version actual: {}
		Ruta de instalacion: {}
		           Servidor: {}
		             Tamaño: {}\n\n",paquete,channel,version,ruta,source,size);
	let opc: String = input().msg("Desea seguir con la instalacion? [S/n]\n").get();
	match &opc[..] {
		"S"|"s" => println!("yeah"),
		_ => {println!("Abortando...");process::exit(0x0100);}
	}
}

fn custom(mut channel:&str, mut version:&str, ruta:&str, source:&str, pack:&str) {
	// Funciones vitales para esta funcion
	fn leer_num(msg0:&str) -> i32 {
		let value = input::<i32>()
			.msg(msg0)
			.err("Es un numero?")
			.default(1)
			.get();
		value
	}
	fn regreso() {
		println!("Nope");
		main();
	}

	let alt = "Develop";
	let lastversion = "1.1.0-beta";
	println!("Canales del paquete:\n\n\t1- Default: {}\n\t2- Alternativa: {}",channel,alt);
	let opc1 = leer_num("\nSelecciona el canal del paquete\n");
	match opc1 {
		1 => println!("Default"),
		2 => {channel = &alt;println!("Cambiando a {}...",channel);}
		_ => {regreso();}
	}
	println!("Versiones disponibles para instalar\n\n\t1- Ultima version: {}\n\t2- Version anterior: {}",version,lastversion);
	let opc = leer_num("\nSelecciona la version\n");
	match opc {
		1 => println!("Ultima version"),
		2 => {version = &lastversion; println!("Cambiando version a : {}...",version);}
		_ => {regreso();}
	}
	println!("Que deseas hacer?\n\n\t1- Modficar unicamente la ruta de instalacion\n\t2- Modficar unicamente el servidor\n\t3- Modificar ambas\n\t4- Continuar sin modificar una de estas");
	let opc = leer_num("\nSelecciona tu opcion\n");
	match opc {
		1 => {let rute: String = input().msg("\nEscribe la ruta que deseas para esta instalacion\n").get();println!("Utilizando la ruta {}",rute );install(pack,channel,version,&rute,source);}
		2 => {let server: String = input().msg("\nEscribe la direccion para descargar el paquete\n").get();println!("Utilizando el server {}",server );install(pack,channel,version,ruta,&server);}
		3 => {let ruta0: String = input().msg("\nEscribe la ruta que desseas para esta instalacion\n").get();println!("Seleccionando la ruta {} ...",ruta0 );let servidor: String = input().msg("\nEscribe la direccion para descargar el paquete").get();println!("Utilizando la direccion {} para la descarga del paquete", servidor);install(pack,channel,version,&ruta0,&servidor);}
		4 => {println!("Por defecto...");install(pack,channel,version,ruta,source);}
		_ => println!("Nope"),
	}
	install(pack,channel,version,ruta,source);
}

fn unistall(pack:&str ,ruta:&str){
	println!("Comprobando dependencias y ruta de instalacion...\n
		Paquete: {}
		Ruta: {}",pack,ruta);
	let opc: String = input().msg("\nDesea seguir con la desinstalacion? [S/n]\n").get();
	match &opc[..] {
		"S"|"s" => println!("Desintalado..."),
		_ => {println!("Abortando...");process::exit(0x0100);},
	}
	fs::remove_file(ruta)
		.expect("No se encuentra en dicha ruta, puede que ya este desintalado o hayas customizado la ruta");
	println!("Desintalacion completada!");
}