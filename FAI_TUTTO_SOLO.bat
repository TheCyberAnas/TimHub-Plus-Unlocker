@echo off
title CYBER ANAS - FULL AUTOPILOT
echo ======================================================
echo    MODALITA' ASSENTE: IL SISTEMA FARÀ TUTTO DA SOLO
echo ======================================================

:: 1. Forza IP su Ethernet 3
netsh interface ip set address name="Ethernet 3" static 192.168.1.100 255.255.255.0 >nul

:: 2. Disabilita ostacoli
netsh advfirewall set allprofiles state off >nul

:: 3. Avvia il Motore Ghost
echo [+] Motore Ghost avviato. Puoi andare a bere un caffe'.
echo [+] Appena colleghi il router (anche con porte rotte), lo sblocchero'.
echo.
python cyber_ghost.py
pause
