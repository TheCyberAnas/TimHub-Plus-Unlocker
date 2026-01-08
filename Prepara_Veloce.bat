@echo off
title PREPARA PC - THE CYBER ANAS
color 0B

:: 1. AUTO-CONFIGURAZIONE IP (Cerca Ethernet 3, se non la trova usa Ethernet)
echo [+] Configurazione Rete rapida...
netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0 >nul 2>&1
if %errorlevel% neq 0 (
    netsh interface ip set address name="Ethernet" static 58.162.0.1 255.255.255.0 >nul 2>&1
)

:: 2. KILL DEI BLOCCHI (Firewall e processi che disturbano)
echo [+] Rimozione blocchi Windows...
netsh advfirewall set allprofiles state off >nul
route delete 0.0.0.0 >nul 2>&1

:: 3. FINE
echo.
echo [ OK ] PC AGGIORNATO E PRONTO!
echo Avvia subito il File 2 per l'attacco.
timeout /t 3
exit
