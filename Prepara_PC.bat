@echo off
title [1] PREPARA PC - THE CYBER ANAS
echo [+] Configurazione Ethernet 3 in corso...
:: Forza l'IP statico necessario per il DGA4331
netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0
echo [+] IP impostato a 58.162.0.1
echo [+] Disabilitazione temporanea firewall... (Per evitare blocchi)
netsh advfirewall set allprofiles state off
echo.
echo [OK] PC PRONTO. Ora puoi lanciare l'attacco.
pause
