@echo off
title THE CYBER ANAS - AUTOMATIC UNLOCKER
echo ======================================================
echo    THE CYBER ANAS - CONFIGURAZIONE ETHERNET 3
echo ======================================================
echo.

:: 1. Imposta l'IP sulla tua scheda specifica "Ethernet 3"
echo [+] Configurazione IP 58.162.0.1 su 'Ethernet 3'...
netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0
if %errorlevel% neq 0 (
    echo [!] ERRORE: Tasto destro sul file e clicca 'Esegui come amministratore'
    pause
    exit
)
echo [OK] IP impostato correttamente!

:: 2. Avvio dell'exploit
echo.
echo [+] Cerco di avviare tch-exploit.exe...
echo [!] ORA: Tieni RESET premuto, accendi il router e aspetta il TESTO VERDE.
echo.

if exist tch-exploit.exe (
    tch-exploit.exe
) else (
    echo [!] ERRORE: Il file tch-exploit.exe non e' in questa cartella!
    echo [!] Trascinalo qui dentro e riprova.
    pause
    exit
)

pause
