@echo off
title TIM HUB+ SCOUT - @thecyberanas
color 0c
cls
echo ==================================================
echo        ROUTER ANALYZER BY THECYBERANAS
echo ==================================================
echo.
echo [*] Verifica connessione al Gateway (192.168.1.1)...
ping 192.168.1.1 -n 2 | findstr "TTL"
if errorlevel 1 (
    echo [!] ERRORE: Router non trovato. Controlla il cavo!
) else (
    echo [OK] Router trovato in rete.
)
echo.
echo [*] Scansione porte per vulnerabilita'...
echo Port 22 (SSH): 
powershell -Command "Test-NetConnection 192.168.1.1 -Port 22" | findstr "TcpTestSucceeded"
echo Port 80 (HTTP): 
powershell -Command "Test-NetConnection 192.168.1.1 -Port 80" | findstr "TcpTestSucceeded"
echo.
echo --------------------------------------------------
echo Se la porta 22 e' False, il router e' ancora bloccato.
echo --------------------------------------------------
pause
