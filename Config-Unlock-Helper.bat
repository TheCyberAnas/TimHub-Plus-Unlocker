@echo off
title CONFIG UNLOCK HELPER - @thecyberanas
color 0b
cls
echo ==================================================
echo       CONFIG DECRYPTOR PREP - THECYBERANAS
echo ==================================================
echo.
echo [*] Rilevato file: config.bin
echo [*] Metodo richiesto: AES-CBC Decrypt
echo.
echo [+] ISTRUZIONI PER LO SBLOCCO:
echo 1. Usa il tool 'mclvt' o un decryptor Python per AGTHF.
echo 2. Cerca nel file decriptato: "ssh_enabled=0"
echo 3. Cambia in: "ssh_enabled=1"
echo 4. Ricripta e carica su 192.168.1.1
echo.
echo --------------------------------------------------
echo [!] STATUS: In attesa di modifica manuale file...
echo --------------------------------------------------
pause
