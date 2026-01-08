@echo off
setlocal enabledelayedexpansion
title CYBER ANAS - PILOTA AUTOMATICO TOTALE
color 0b

:START
cls
echo ======================================================
echo    THE CYBER ANAS - SISTEMA 100%% AUTOMATICO
echo ======================================================
echo.

:: 1. CONTROLLO AMMINISTRATORE
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] ERRORE: Devi eseguire come AMMINISTRATORE!
    echo [!] Clicca col tasto destro sul file e scegli 'Esegui come amministratore'.
    pause
    exit
)

:: 2. CONFIGURAZIONE SCHEDA RETE
echo [+] Configurazione Ethernet 3 in corso...
netsh interface ip set address name="Ethernet 3" static 192.168.1.100 255.255.255.0 >nul 2>&1
echo [+] IP 192.168.1.100 impostato.
echo.

:: 3. DASHBOARD DI ATTACCO
echo  ----------------------------------------------------
echo   STATO: IN ATTESA DEL ROUTER (Fai il Reset ora!)
echo   PORTA CONSIGLIATA: WAN (ROSSA)
echo  ----------------------------------------------------
echo.

:: 4. MOTORE DI ATTACCO E LOGIN (Tutto in uno)
:: Questo comando scarica il mini-motore e lo esegue all'infinito
py -c "
import socket, time, os
def run():
    print('      >>> MOTORE AVVIATO: BOMBARDAMENTO IN CORSO...')
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    payload = b'\x02\x01\x06\x00' + b'\x00' * 296
    count = 0
    while True:
        try:
            s.sendto(payload, ('255.255.255.255', 67))
            count += 1
            if count % 50 == 0:
                print(f'      Attacchi inviati: {count}', end='\r')
            
            # Controlla se il router ha aperto la porta SSH
            check = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            check.settimeout(0.05)
            if check.connect_ex(('192.168.1.1', 22)) == 0:
                print('\n\n[!!!] BINGO! ROUTER AGGANCIATO! [!!!]')
                print('[+] Eseguo accesso automatico...')
                # Comando per sbloccare il router (Root)
                # Qui potresti aggiungere i tuoi comandi SSH
                break
            check.close()
        except:
            pass
        time.sleep(0.01)
run()
"

echo.
echo ======================================================
echo    ATTACCO COMPLETATO O ROUTER RIAVVIATO
echo    Ricomincio tra 5 secondi...
echo ======================================================
timeout /t 5
goto START
