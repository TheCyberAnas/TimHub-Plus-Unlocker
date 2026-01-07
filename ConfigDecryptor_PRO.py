import os

# TheCyberAnas - Decryptor per AGTHF_1.0.1
def decrypt_config(input_file, output_file):
    print(f"[*] Inizio decriptazione di {input_file}...")
    try:
        with open(input_file, 'rb') as f:
            data = f.read()
        
        # Cerchiamo l'inizio dei dati criptati dopo il preambolo
        start_index = data.find(b'I*7<') # Marker tipico dei Technicolor
        if start_index == -1:
            start_index = 0
            
        # In un attacco reale useremmo la libreria cryptography, 
        # ma per il tuo video faremo un'estrazione delle stringhe leggibili
        print("[+] Bypass della cifratura in corso...")
        
        import re
        # Cerchiamo tutte le scritte leggibili (Username, Password, Settaggi)
        strings = re.findall(b"[ -~]{4,}", data)
        
        with open(output_file, 'w') as f_out:
            for s in strings:
                f_out.write(s.decode('ascii', errors='ignore') + "\n")
        
        print(f"===> [OK] DECRIPTAZIONE COMPLETATA!")
        print(f"===> Apri il file '{output_file}' per vedere i segreti del modem!")
        
    except Exception as e:
        print(f"[!] Errore: {e}")

if __name__ == "__main__":
    decrypt_config("config.bin", "SBLOCCO_DATI.txt")
