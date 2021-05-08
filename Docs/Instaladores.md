## Linux
Debes de tener instalado [ruby](https://www.ruby-lang.org/es/), [Bundler](https://bundler.io/), [PHP](https://www.php.net/), [cURL](https://curl.haxx.se/) La instalacion dependera de tu distribucion de linux. Una vez tengas instalado tendras que clonar este repositorio.
`git clone https://github.com/m4rklean/Tool-AC/`
carpeta y ejecuta los siguientes comando:
```
bundle install
```
Y lo siguiente
```
$ cd Tool-AC
$ cd ConsolaV
$ chmod +x toac
# cp toac /usr/bin
# mkdir -p /usr/share/tool-ac
# cp -r core /usr/share/tool-ac
# cp -r libs /usr/share/tool-ac
```
## Apmpkg
Se puede instalar mediante la herramienta [apmpkg](https://github.com/kedap/apmpkg) con el siguiente comando:
```
# apmpkg instalar -u https://github.com/m4rklean/Tool-AC/releases/download/1.2/tool-ac-1.2-m4rk.abi.tar.gz
```