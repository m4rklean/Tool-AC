Write-Host "Atencion este script necesitade permisos de Administrador. Enter para continuar" -ForegroundColor Red
$o = Read-Host
clear
Write-Host "
                     ┏━━━━┓━━━━━━━━┏┓━━━━━━┏━━━┓┏━━━┓
                     ┃┏┓┏┓┃━━━━━━━━┃┃━━━━━━┃┏━┓┃┃┏━┓┃
                     ┗┛┃┃┗┛┏━━┓┏━━┓┃┃━━━━━━┃┃━┃┃┃┃━┗┛
                     ━━┃┃━━┃┏┓┃┃┏┓┃┃┃━┏━━━┓┃┗━┛┃┃┃━┏┓
                     ━┏┛┗┓━┃┗┛┃┃┗┛┃┃┗┓┗━━━┛┃┏━┓┃┃┗━┛┃
                     ━┗━━┛━┗━━┛┗━━┛┗━┛━━━━━┗┛━┗┛┗━━━┛
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                                            
                                             Configurador Windows" -ForegroundColor Red
Write-Host "
    Elige el tipo de usuario vas a hacer
    
    1) Ususario normal (PC Windows 7 o superior)
    2) Desarrollador (PC Windows 7 o superior)
    "
$opcion = Read-Host "Elige tu opcion [x]"

function usern()
{
    clear
    Write-Host "Se instalaran o actualizaran los siguientes programas
    
    Chocolatey
    7-Zip
    Ruby
    PHP
    cURL
    RunInBash
    Demas gemas...
    "
    $confirmacion = Read-Host "Estas de acuerdo con esto? [S/n]"
    if($confirmacion -eq "n")
    {
        Write-Host "Es afuerzas brou :c" -ForegroundColor Red
        exit
    }
    else
    {
        Write-Host "Realizano instalacion y configuracion..."
    }
    Write-Host "Instalado paqueteria (Chocolatey)" -ForegroundColor Green
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Host "Instalando Ruby" -ForegroundColor Yellow
    choco install ruby
    Write-Host "Instalando PHP" -ForegroundColor Yellow
    choco install php
    Write-Host "Instalando cURL" -ForegroundColor Yellow
    choco install curl
    Write-Host "RunInBash" -ForegroundColor Yellow
    choco install runinbash
    Write-Host "Instalando Gemas" -ForegroundColor Orange
    gem install colorize
    gem install tty-platform
    gem install ipaddr
    gem install macaddr
    gem install uri
    gem install http
    gem install net
    gem install json
    gem install mechanize
    gem install ruby-progressbar
    gem install nokogiri
    gem install selenium-webdriver
    cd ..
    Write-Host "Enhorabuena se a terminado de confiurar dependencias y configuracion de Tool-AC" -ForegroundColor Green
    $eje = Read-Host "Quieres ejecutar en este momento? [S/n]"
    if ($eje -eq "S")
    {
        ruby main.rb
        exit
    }
    else
    {
        exit
    }
}

function userd()
{
    Write-Host "Se instalaran o actualizaran los siguientes programas
    
    Chocolatey
    7-Zip
    Ruby
    PHP
    cURL
    Vim
    Git
    Ngrok
    Node js
    RunInBash
    Demas gemas..."
    $sat = Read-Host "Estasde acuerdo con esto? [S/n]"
    if ($sat -eq "n")
    {
        Write-Host "Es necesario brou :c" -ForegroundColor Red
        exit
    }
    else
    {
        Write-Host "Procesando"
    }
    Write-Host "Instalado paqueteria (Chocolatey)" -ForegroundColor Green
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Host "Instalando Ruby" -ForegroundColor Yellow
    choco install ruby
    Write-Host "Instalando PHP" -ForegroundColor Yellow
    choco install php
    Write-Host "Instalando cURL" -ForegroundColor Yellow
    choco install curl
    Write-Host "Instalando Vim" -ForegroundColor Yellow
    choco install vim
    Write-Host "Instalando Git" -ForegroundColor Yellow
    choco install Git
    Write-Host "Instalando Ngrok" -ForegroundColor Yellow
    choco install ngrok
    Write-Host "Instalando Node js" -ForegroundColor Yellow
    choco install nodejs
    Write-Host "Instalando RunInBash" -ForegroundColor Yellow
    choco install runinbash
    Write-Host "Instalando Gemas" -ForegroundColor Orange
    gem install colorize
    gem install tty-platform
    gem install ipaddr
    gem install macaddr
    gem install uri
    gem install http
    gem install net
    gem install json
    gem install mechanize
    gem install ruby-progressbar
    gem install nokogiri
    gem install selenium-webdriver
    cd ..
    Write-Host "Enhorabuena se a terminado de confiurar dependencias y configuracion de Tool-AC" -ForegroundColor Green
    $eje = Read-Host "Quieres ejecutar en este momento? [S/n]"
    if ($eje -eq "S")
    {
        ruby main.rb
        exit
    }
    else
    {
        exit
    }
}

if($opcion -eq "1")
{
    usern
}
if($opcion -eq "2")
{
    userd
}
else
{
    Write-Host "Prueba de nuez"
}