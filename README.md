# 🔓 TimHub Plus Unlocker (DGA4331) - Project Ghost
Benvenuti nel repository ufficiale di **TheCyberAnas**. Questo progetto documenta la ricerca di vulnerabilità, l'analisi del firmware e le procedure di sblocco avanzate per il router **Technicolor DGA4331 (TIM HUB+)**.

---

## 🛡️ Target Intelligence
| Specifica | Dettaglio |
| :--- | :--- |
| **Hardware** | Technicolor MediaAccess DGA4331 |
| **Firmware Base** | AGTHF_1.0.1 (Vulnerabile a BOOTP/TFTP) |
| **SoC** | Broadcom BCM63138 |
| **Stato Sicurezza** | Firewall attivo / Porta 22 Chiusa |
| **Metodologia** | BOOTP Exploit / Configuration Injection |

---

## 📊 Roadmap del Progetto
- [x] **Reconnaissance**: Identificazione parametri tramite `RouterScout.bat`.
- [x] **Network Setup**: Configurazione ambiente isolato (IP 58.162.0.1).
- [ ] **Exploit Phase**: Iniezione payload tramite `CyberAnas_Start.bat` (Testing...).
- [ ] **Root Access**: Apertura shell SSH (Dropbear) e installazione GUI Ansuel.
- [ ] **Modding**: Configurazione avanzata Wi-Fi 6 e modalità Ripetitore.

---

## 🛠️ Cyber Toolkit (TheCyberAnas Edition)

### 🚀 Moduli di Attacco
* `CyberAnas_Start.bat`: Il core engine per il loop dell'exploit BOOTP.
* `CYBER_ANAS_GHOST.bat`: Script per l'offuscamento dell'attacco.
* `Payload-Injector.bat`: Caricamento dei file di configurazione modificati.

### 🔍 Moduli di Analisi
* `RouterScout.bat`: Scansione rapida della rete e delle porte aperte.
* `ConfigDecryptor_PRO.py`: Script Python per la decrittazione dei backup `config.bin`.
* `CyberEngine.py`: Motore di calcolo per l'analisi delle vulnerabilità firmware.

### 🛡️ Moduli di Manutenzione
* `Ripristina_Sicurezza.bat`: **[EMERGENZA]** Ripristina istantaneamente Firewall e IP DHCP sul PC.
* `config_ripetitore.bat`: Setup rapido per l'uso del router come bridge.

---

## ⚠️ Protocollo di Sicurezza
Il file `Ripristina_Sicurezza.bat` è stato incluso per garantire che il sistema HP EliteBook torni alle condizioni originali dopo ogni sessione di test. 
**Nota:** Disattivare il Firewall di Windows solo durante l'esecuzione di `CyberAnas_Start.bat`.

---

## 📱 Social & Community
Segui i progressi in tempo reale e guarda i tutorial video sul mio profilo:
**TikTok:** [@thecyberanas](https://www.tiktok.com/@thecyberanas)

---

> **Disclaimer**: Questo repository è creato da **TheCyberAnas** esclusivamente a scopo didattico. L'accesso non autorizzato a sistemi informatici è illegale. Il materiale qui contenuto serve a comprendere la sicurezza delle reti domestiche.
