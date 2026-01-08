@echo off
title THE CYBER ANAS - GLOBAL UNLOCK
echo [1] Impostazione IP su Ethernet 3...
:: Il comando per impostare l'IP corretto per la tua scheda
netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0

echo [2] Controllo file exploit...
:: Ho corretto il nome qui sotto togliendo .exe se Windows lo nasconde
if exist "tch-exploit-win.exe" (
    echo [OK] File trovato! Avvio l'attacco...
    tch-exploit-win.exe
) else if exist "tch-exploit-win" (
    echo [OK] File trovato (senza estensione)! Avvio...
    tch-exploit-win
) else (
    echo [ERRORE] Non trovo tch-exploit-win. Assicurati che sia nella stessa cartella!
)

echo.
echo Operazione terminata.
pause
