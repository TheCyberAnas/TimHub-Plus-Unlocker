import os

def analyze_config(file_path):
    print(f"[*] Analisi del file: {file_path}")
    try:
        with open(file_path, 'rb') as f:
            content = f.read(200) # Leggiamo l'intestazione
            if b"CIPHERKEY=GW" in content:
                print("[+] VULNERABILITA' TROVATA: Chiave GW rilevata!")
                print("[+] Questo firmware (1.0.1) permette il bypass della cifratura.")
            else:
                print("[-] Chiave non riconosciuta o file corrotto.")
    except FileNotFoundError:
        print("[!] Errore: trascina il file config.bin nella cartella dello script!")

if __name__ == "__main__":
    analyze_config("config.bin")
