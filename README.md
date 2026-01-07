# 🔓 TimHub Plus Sbloccante (DGA4331)

Benvenuti nel repository ufficiale di **TheCyberAnas**. Questo progetto documenta la ricerca di vulnerabilità e le procedure di sblocco per il router **Technicolor DGA4331 (TIM HUB+)**.

## 🛡️ Specifiche del Bersaglio
- **Modello:** Technicolor MediaAccess DGA4331
- **Versione Firmware Rilevata:** `AGTHF_1.0.1` (Vulnerabile)
- **Stato Crittografia:** AES-CBC (CIPHERKEY=GW)
- **MAC Prefix:** `D4:35:1D`

## 📊 Roadmap del Progetto
- [x] **Ricognizione:** Identificazione modello e versione firmware tramite `RouterDumper.bat`.
- [x] **Scansione Porte:** Verifica stato porta 22 (SSH) -> *Stato attuale: CHIUSA (False)*.
- [x] **Analisi Payload:** Recupero file `config.bin` per analisi offline.
- [ ] **Fase di Exploit:** Iniezione tramite manipolazione del file di configurazione (In corso...).
- [ ] **Accesso Root:** Apertura permanente della shell SSH.

## 🛠️ Tool inclusi
| File | Descrizione |
| :--- | :--- |
| `RouterScout.bat` | Analizza se il router è raggiungibile e se le porte critiche sono aperte. |
| `RouterDumper.bat` | Estrae un report tecnico dettagliato (MAC, TTL, HTTP Headers). |
| `SSH-BruteCheck.bat` | Monitora in tempo reale l'apertura della porta 22 durante i tentativi di sblocco. |
| `TimHub-Unlocker-Pro.bat` | Tenta l'attivazione remota del servizio Dropbear (SSH). |

## ⚠️ Disclaimer
Questo progetto è creato da **TheCyberAnas** a scopo puramente educativo e di studio sul networking. Non mi assumo responsabilità per danni causati ai dispositivi.

---
📱 **Segui l'evoluzione del progetto su TikTok:** [@thecyberanas](https://www.tiktok.com/@thecyberanas)
