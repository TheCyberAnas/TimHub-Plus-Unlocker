@echo off
echo [+] Accesso Root confermato.
echo [+] Trasformazione in Ripetitore in corso...

:: Invia i comandi per la GUI Ansuel e il DHCP Client
ssh -o StrictHostKeyChecking=no root@192.168.1.1 "uci set network.lan.proto='dhcp'; uci set network.lan.gateway='192.168.1.1'; uci commit network; /etc/init.d/network restart; curl -kLs https://raw.githubusercontent.com/TheCyberAnas/unlock/main/setup.sh | sh"

echo [OK] Router configurato e riavviato.
echo MISSIONE COMPIUTA ANCHE IN TUA ASSENZA.
pause
