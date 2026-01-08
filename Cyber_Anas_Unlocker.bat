@echo off
setlocal enabledelayedexpansion
title CYBER ANAS - GITHUB AUTOMATION TOOL
color 0B

echo ======================================================
echo    TCH-EXPLOIT AUTOMATOR - TARGET: DESKTOP
echo ======================================================
echo.

:: 1. CONTROLLO PRIVILEGI AMMINISTRATORE
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] ERRORE: Devi eseguire questo script come AMMINISTRATORE.
    echo Clicca col tasto destro sul file e scegli 'Esegui come amministratore'.
    pause
    exit
)

:: 2. IMPOSTAZIONE PERCORSO DESKTOP
:: Questo comando trova automaticamente la cartella Desktop del tuo utente
set "DESKTOP_PATH=%USERPROFILE%\Desktop"
set "EXPLOIT_NAME=tch-exploit-win.exe"

echo [+] Cerco l'exploit sul tuo Desktop...
if exist "%DESKTOP_PATH%\%EXPLOIT_NAME%" (
    echo [OK] File trovato in: %DESKTOP_PATH%\%EXPLOIT_NAME%
) else (
    echo [!] ERRORE: Non trovo %EXPLOIT_NAME% sul Desktop.
    echo Assicurati che il nome del file sia esatto.
    pause
    exit
)

:: 3. CONFIGURAZIONE SCHEDA DI RETE
echo.
echo [+] Configurazione Ethernet 3 (IP 58.162.0.1)...
netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0 >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] ERRORE: Impossibile configurare 'Ethernet 3'. 
    echo Verifica il nome della scheda in 'Connessioni di rete'.
    pause
    exit
)
echo [OK] Rete configurata.

:: 4. PROCEDURA DI ATTACCO
echo.
echo ======================================================
echo    PRONTO PER L'ATTACCO: SEGUI I PASSAGGI
echo ======================================================
echo 1. Router spento e collegato alla porta ROSSA o LAN 1.
echo 2. TIENI PREMUTO il tasto RESET con uno stuzzicadenti.
echo 3. ACCENDI il router mentre tieni premuto.
echo 4. Guarda questa finestra: appena vedi scorrere i dati,
echo    lascia pure il tasto RESET.
echo ======================================================
echo.
pause

:: Lancio dell'exploit dal desktop
cd /d "%DESKTOP_PATH%"
"%EXPLOIT_NAME%"

echo.
echo [+] Procedura completata. Controlla se hai il testo VERDE.
pause
