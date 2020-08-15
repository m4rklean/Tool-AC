# Variables de texto 
$logo = " 
                     ┏━━━━┓━━━━━━━━┏┓━━━━━━┏━━━┓┏━━━┓
                     ┃┏┓┏┓┃━━━━━━━━┃┃━━━━━━┃┏━┓┃┃┏━┓┃
                     ┗┛┃┃┗┛┏━━┓┏━━┓┃┃━━━━━━┃┃━┃┃┃┃━┗┛
                     ━━┃┃━━┃┏┓┃┃┏┓┃┃┃━┏━━━┓┃┗━┛┃┃┃━┏┓
                     ━┏┛┗┓━┃┗┛┃┃┗┛┃┃┗┓┗━━━┛┃┏━┓┃┃┗━┛┃
                     ━┗━━┛━┗━━┛┗━━┛┗━┛━━━━━┗┛━┗┛┗━━━┛
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                                                
                                              Instalador
"
$menu = "
    1) Usuario normal de Windows 10
    2) Desarrolador

"
$dependencias = "
Programas:

    Ruby
    Bundler

Gemas:

    Colorize
    Tty-platform
    Macaddr
    Json
"
#Init

#Funcion 

function Normal 
{
    Write-Output "Las dependencias a instalar son:
    "
    $dependencias
    $ja = Read-Host "Estas de acuerdo con instalar dichos paquetes? [S/N]"
    if ($ja -eq "S")
    {
        Write-Output "Instalando paquetes"
    }
    else
    {
       Write-Output "Es de awbo bro"
       exit
    }
    
    remove-item alias:curl
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Output "Instalando dependencias"
    choco install ruby -y
    choco install curl -y
    gem install bundle
    mkdir Tool-AC
    cd Tool-AC
    Write-Output "Descargando"
    curl -o main.rb https://pastebin.com/raw/CCsWkYn1
    curl -o Gemfile https://pastebin.com/raw/mmUcvMC2  
    curl -o Gemfile.lock https://pastebin.com/raw/VhTVqsMv 
    ridk install 1
    Write-Output "Instalando gemas"
    bundle install 
    Write-Output "Listo! :D, Para ejecutar escribe:
    ruby main.rb"
    exit
}

clear
Write-Host -Foreground Red $logo "Que tipo de usuario vas a hacer" $menu 
$opc = Read-Host "Elige tu opcion"

#sepa

if ($opc -eq "1") 
{
    Normal
}
if ($opc -eq "99")
{
    rm -R .\Tool-AC
}
else
{
}

