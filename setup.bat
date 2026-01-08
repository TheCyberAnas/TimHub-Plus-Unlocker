@echo off
title DEBUG THE CYBER ANAS
echo [1] Controllo permessi Amministratore...
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERRORE] Devi cliccare col tasto destro e scegliere 'Esegui come amministratore'!
    pause
    exit
)

echo [2] Impostazione IP su Ethernet 3...
netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0
if %errorlevel% neq 0 (
    echo [ERRORE] Non riesco a modificare Ethernet 3. Controlla il nome della scheda.
    pause
    exit
)

echo [3] Controllo file exploit...
if exist tch-exploit-win.exe (
    echo [OK] File trovato. Avvio exploit...
    tch-exploit-win.exe
) else (
    echo [ERRORE] Il file tch-exploit-win.exe non e nella cartella!
    dir
)

echo.
echo Script terminato.
pause
