@echo off
title TheCyberAnas - Ultimate TIM HUB+ Unlocker
echo ======================================================
echo    BENVENUTO NELLO SBLOCCO UNIVERSALE DI THECYBERANAS
echo ======================================================
echo.

:: 1. Imposta IP statico sulla scheda Ethernet
echo [+] Configurazione scheda Ethernet in corso (IP: 58.162.0.1)...
netsh interface ip set address name="Ethernet" static 58.162.0.1 255.255.255.0

:: 2. Avvio Exploit
echo [+] Lancio dell'exploit... 
echo [!] ORA: Tieni premuto il tasto RESET sul router e accendilo.
echo [!] Rilascia il tasto quando vedi il TESTO VERDE o il LED lampeggia.
echo.
:: Qui il comando chiama il motore dell'exploit
tch-exploit.exe

echo.
echo [+] Se vedi 'Done', l'accesso SSH è aperto!
pause
