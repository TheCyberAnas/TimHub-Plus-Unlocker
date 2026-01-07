#!/bin/sh
# Script di sblocco e configurazione Ripetitore by TheCyberAnas

echo "Inizio configurazione TheCyberAnas GUI..."

# 1. Installazione GUI Ansuel (Scarica direttamente dal repo ufficiale)
curl -kLs https://raw.githubusercontent.com/Ansuel/gui-dev-build-auto/master/auto_install.sh | bsh

# 2. Configurazione automatica Ripetitore Wi-Fi
echo "Trasformazione in Ripetitore Wi-Fi 6..."
uci set network.lan.proto='static'
uci set network.lan.ipaddr='192.168.1.2'  # IP del nuovo ripetitore
uci set network.lan.gateway='192.168.1.1' # IP del tuo modem principale
uci set network.lan.dns='1.1.1.1'
uci set dhcp.lan.ignore='1'               # Disabilita il DHCP per non fare conflitto

# 3. Applica modifiche
uci commit
/etc/init.d/network restart

echo "SBLOCCO COMPLETATO! Il tuo TIM HUB+ è ora un ripetitore."
