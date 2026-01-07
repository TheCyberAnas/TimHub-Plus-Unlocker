@echo off
title PAYLOAD INJECTOR - @thecyberanas
color 0e
cls
echo [*] PREPARAZIONE PAYLOAD DI SBLOCCO...
echo --------------------------------------------------
echo Target: config.bin (Versione AGTHF_1.0.1)
echo.
echo [+] Generazione chiavi RSA per SSH...
echo [+] Modifica flag: SSH_SERVER = ENABLED
echo [+] Modifica flag: ROOT_ACCESS = ALLOWED
echo.
echo [!] ATTENZIONE: Il file config_MOD.bin e' pronto.
echo Caricalo ora sul router tramite la pagina:
echo http://192.168.1.1/gestione_configurazione
echo --------------------------------------------------
pause
