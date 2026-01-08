#!/bin/sh
# SCRIPT DI POST-SBLOCCO CYBER ANAS

echo "[+] Sblocco GUI Ansuel in corso..."
curl -kLs https://raw.githubusercontent.com/Ansuel/tch-nginx-gui/master/install.sh | sh

echo "[+] Configurazione Modalità Ripetitore..."
uci set network.lan.proto='dhcp'
uci set network.lan.gateway='192.168.1.1'
uci commit network

echo "[+] MISSIONE COMPIUTA!"
/etc/init.d/network restart
