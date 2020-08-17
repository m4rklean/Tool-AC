# Tool-AC Version de script
Multiherramienta para bineos, carding y obtencion de cuentas para **Obsidian Team** y otras organizaciones
# Como funciona
La version de consola tiene una veriedad de herramientas que se pueden seleccionar desde el menu principal, alguna de las categorias son 
- CC's (Orientada al bineo)
- Carding (Tecnicas de carding, phising, spam, spoff sms entre otras...)
- HackTools (Herramientas populares como: Wifi-cracker, ataque MIT, jonhy rapper)
- CrackTools (Herramientas como checkers, generador de combos, proxys)
# API's utilizadas, dependencias y codigo basado
Esta herramienta dependen de las siguientas API's o aplicaciones
## APIS's
- [Binlist](https://binlist.net/) [repositorio](https://github.com/binlist/data)
## Gemas
- [colorize](https://rubygems.org/gems/colorize)
- [tty-platform](https://rubygems.org/gems/tty-platform)
- [uri](https://rubygems.org/gems/uri)
- [json](https://rubygems.org/gems/json)

## Aplicaciones
- [Bundler](https://bundler.io/)
- [Rubygems](https://rubygems.org/)
# Ejecucion correcta del script
## Windows
Para esto deberas tener instalado [ruby](https://rubyinstaller.org/) y [Ruby gems](https://rubygems.org/pages/download)
Una vez ya lo tengas correctamente instalado en tu sistema operativo windows descargas el siguiente paquete.
Descomprimes el archivo .ZIP y abres una tu terminal favorita situandote en la carpeta en donde lo descomprimites.
Ejecuta los siguientes comandos:
```
bundle install
gem install tty-platform
```
Y para ejecutar el script:
```
ruby main.rb
```
## Linux
Debes de tener instalado [ruby](https://www.ruby-lang.org/es/) y [Bundler](https://bundler.io/), La instalacion dependera de tu distribucion de linux. Una vez tengas instalado tendras que descargar el este paquete.
Descomprimes con tu programa de preferencia y abres una terminal en la misma carpeta y ejecuta los siguientes comando:
```
bundle install
```
Y para ejecutar
```
ruby main.rb
```