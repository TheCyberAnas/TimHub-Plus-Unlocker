@echo off
setlocal enabledelayedexpansion
title CYBER ANAS - ROUTER DOMINATION SYSTEM
color 0A

echo ======================================================
echo    BENVENUTO NELLO SBLOCCO AUTOMATICO DI ANAS
echo ======================================================
echo.

:: STEP 1: PERMESSI
echo [+] ATTACCO 1: Acquisizione permessi di sistema...
net session >nul 2>&1
if %errorlevel% neq 0 (
    color 0C
    echo [!] ERRORE: Devi cliccare col tasto destro e scegliere 'Esegui come amministratore'!
    pause
    exit
)
echo [OK] Permessi ottenuti.
echo.

:: STEP 2: CONFIGURAZIONE RETE
echo [+] ATTACCO 2: Configurazione IP Statico su Ethernet 3...
echo     Bersaglio: 58.162.0.1
netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0 >nul 2>&1
if %errorlevel% neq 0 (
    color 0C
    echo [!] ERRORE: Non trovo 'Ethernet 3'. Controlla il nome della scheda!
    pause
    exit
)
echo [OK] Indirizzo IP impostato con successo.
echo.

:: STEP 3: PREPARAZIONE EXPLOIT
echo [+] ATTACCO 3: Ricerca del motore di sblocco...
set "FILE_EXPLOIT=tch-exploit-win"
if exist "tch-exploit-win.exe" (set "EXE=tch-exploit-win.exe") else (if exist "tch-exploit-win" (set "EXE=tch-exploit-win") else (set "EXE=NONE"))

if "%EXE%"=="NONE" (
    color 0C
    echo [!] ERRORE: Non trovo il file tch-exploit-win nella cartella!
    pause
    exit
)
echo [OK] Motore trovato: %EXE%
echo.

:: STEP 4: AZIONE FISICA (TUTORIAL)
echo ======================================================
echo          ISTRUZIONI PER IL ROOT (LEGGI BENE!)
echo ======================================================
echo 1. Spegni il router dal tasto nero dietro.
echo 2. Prendi uno stuzzicadenti e TIENI PREMUTO il tasto RESET.
echo 3. Mentre tieni premuto RESET, accendi il router.
echo 4. Guarda questa finestra: quando vedi che le scritte 
echo    corrono, puoi lasciare il tasto RESET.
echo ======================================================
echo.
pause
echo [+] ATTACCO 4: Lancio Exploit... In attesa del router...
%EXE%

echo.
echo [+] ATTACCO 5: Verifica finale...
echo Se hai visto il testo verde, il router e' tuo!
echo Ora puoi entrare su 192.168.1.1 con root / root.
echo.
pause
