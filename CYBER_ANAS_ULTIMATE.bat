@echo off
title TEST STABILITA CYBER ANAS
echo [+] Controllo privilegi...
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERRORE] Non sei Amministratore! Chiudo tra 5 secondi...
    timeout /t 5
    exit
)

echo [+] Provo a configurare Ethernet 3...
netsh interface ip set address name="Ethernet 3" static 192.168.1.100 255.255.255.0
if %errorlevel% neq 0 (
    echo [ERRORE] Problema con la scheda Ethernet 3.
)

echo.
echo [+] Se leggi questo, lo script NON si e' chiuso da solo.
echo [+] Ora premi un tasto per uscire.
pause
