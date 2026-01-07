@echo off
title ROUTER DUMPER - @thecyberanas
color 0b
cls
echo ==================================================
echo         ROUTER DATA DUMPER BY THECYBERANAS
echo ==================================================
echo.
echo [*] Creazione Report di Analisi in corso...
echo DATA E ORA: %date% %time% > Router_Report.txt
echo UTENTE: %username% >> Router_Report.txt
echo -------------------------------------------------- >> Router_Report.txt

echo [+] Analisi Gateway...
ping 192.168.1.1 -n 2 >> Router_Report.txt

echo [+] Tracciamento rotta verso il router...
tracert -d -h 2 192.168.1.1 >> Router_Report.txt

echo [+] Scansione ARP (Indirizzo Fisico)...
arp -a | findstr "192.168.1.1" >> Router_Report.txt

echo [+] Test Risposta Web (Porta 80)...
powershell -Command "Invoke-WebRequest -Uri http://192.168.1.1 -Method Head" >> Router_Report.txt 2>&1

echo.
echo --------------------------------------------------
echo [OK] Analisi completata! 
echo E' stato creato il file 'Router_Report.txt' 
echo aprilo per vedere i dati tecnici del tuo TIM HUB+.
echo --------------------------------------------------
pause
