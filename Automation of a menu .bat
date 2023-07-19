@echo off 
title Logon_WH7
chcp 850 >NUL
mode con cols=85 lines=15
color 04
:debut                                                             
echo                           ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» 
echo   \                   /   º             .:Menu:. By Mehd101                      º
echo     /     \   /     \     º                                                      º
echo     \  -  /   \  -  /     º 1. Executer les modules TSSR                         º
echo                           º 2. Tuer les processus en cours                       º
echo            /\             º 3. Mettre la machine en veille                       º
echo    \   __________   /     º 4. Red‚marrer la machine  /!\                        º
echo        /\/\/\/\/\         º 5. Eteindre la machine    /!\                        º
echo        \/\/\/\/\/         º 6. Initialisation du WIFI                            º
echo                           º 7. Quitter                                           º
echo   ///////////////         º                                                      º
echo             /////////     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ 
echo.
rem Gestion des choix avec condition.
                 choice /C 1234567 /N /M                "Selectionner votre option : (1,2,3,4,5,6,7): 
if %errorlevel%== 1 goto menu1
if %errorlevel%== 2 goto menu2
if %errorlevel%== 3 goto menu3
if %errorlevel%== 4 goto menu4
if %errorlevel%== 5 goto menu5
if %errorlevel%== 6 goto menu6
if %errorlevel%== 7 goto menuq
:menu1
cls
echo Les modules TSSR sont en cours de chargement.
echo Veuillez patienter...
@echo off
timeout /t 5>NUL 
rem Ouvertures des PROGRAMMES.
start "" "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
start "" "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe"
start "" "C:\Program Files\Cisco Packet Tracer 8.2.1\bin\PacketTracer.exe"
start "" "C:\Program Files (x86)\Skillbrains\lightshot\5.5.0.7\Lightshot.exe"
rem Ouvertures des PAGES WEB
start "" "https://drive.google.com/drive/my-drive"
start "" "https://google.fr"
start "" "https://www.linkedin.com/"
rem Chargement des VMS
::cd "C:\Program Files\Oracle\VirtualBox" 
::VBoxManage startvm "Debian11" --type headless
start "" "C:\Users\administrateur\VirtualBox VMs\Debian 11 - GNOME\Debian 11 - GNOME.vbox"
cls
goto debut
:menu2
rem Fermer les processus en cours...
taskkill /IM firefox.exe
taskkill /IM discord.exe
taskkill /IM cherrytree.exe
taskkill /IM VirtualBox.exe
taskkill /IM VirtualBoxVM.exe
taskkill /IM zoom.exe
taskkill /IM Lightshot.exe
taskkill /IM vmware.exe
taskkill /IM DB_dev.ctx
taskkill /IM db_net.ctx
taskkill /IM notepad++.exe
cls
echo Les processus ont bien été tu es [V]
timeout /t 10> NUL 
cls 
goto debut
:menu3
cls
@echo off
echo Votre machine est en préparation de mise en veille...
timeout /t 10> NUL
shutdown /h
cls
goto debut
:menu4
shutdown /r /t 1
:menu5
shutdown /s /t 1

rem Ces commandes permettront la réinitilation des réglages et le renouvellement de votre adresse IP.
:menu6
@echo off 
echo La reinitialisation des paramètres wifi est en cours.
echo Veuillez patienter...
timeout /t 5>NUL
netsh winhttp reset proxy
netsh winhttp reset tracing
netsh winsock reset catalog
netsh int ipv4 reset catalog
netsh int ipv6 reset catalog
ipconfig /release
ipconfig /renew
:menuq
quit
