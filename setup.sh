#!/bin/sh
# THE CYBER ANAS - ULTIMATE AUTO-CONFIGURATOR

echo "------------------------------------------------"
echo "   INIZIO CONFIGURAZIONE THE CYBER ANAS        "
echo "------------------------------------------------"

# 1. INSTALLAZIONE GUI ANSUEL (Automatica)
echo "[+] Installazione GUI Ansuel in corso..."
curl -kLs https://raw.githubusercontent.com/Ansuel/gui-dev-build-auto/master/auto_install.sh | bsh

# 2. CONFIGURAZIONE RETE (Modalità Ripetitore)
echo "[+] Configurazione Modalita' Ripetitore..."
uci set network.lan.proto='static'
uci set network.lan.ipaddr='192.168.1.2'   # L'IP del tuo nuovo ripetitore
uci set network.lan.gateway='192.168.1.1'  # L'IP del modem principale
uci set network.lan.dns='8.8.8.8'
uci set dhcp.lan.ignore='1'                # Disabilita il DHCP per evitare conflitti

# 3. SBLOCCO WI-FI 6 E OTTIMIZZAZIONE
echo "[+] Ottimizzazione Wi-Fi 6..."
uci set wireless.radio_2g.disabled='0'
uci set wireless.radio_5g.disabled='0'

# 4. SALVATAGGIO E RIAVVIO
uci commit
echo "[SUCCESS] Configurazione completata!"
echo "[!] Il router si riavviera' tra 5 secondi..."
sleep 5
reboot
