@echo off
title RIPRISTINO SICUREZZA PC - THE CYBER ANAS
echo ====================================================
echo   RIPRISTINO CONFIGURAZIONE DI RETE E SICUREZZA
echo ====================================================
echo.

:: 1. Ripristino IP Automatico (DHCP) su Ethernet 3
echo [+] Ripristino IP automatico su 'Ethernet 3'...
netsh interface ip set address name="Ethernet 3" source=dhcp
netsh interface ip set dns name="Ethernet 3" source=dhcp

:: 2. Riattivazione Firewall di Windows
echo [+] Riattivazione del Firewall di Windows...
netsh advfirewall set allprofiles state on

:: 3. Pulizia Cache DNS
echo [+] Pulizia cache DNS...
ipconfig /flushdns

echo.
echo ====================================================
echo   PROCEDURA COMPLETATA! Il PC e sicuro e in DHCP.
echo ====================================================
pause
