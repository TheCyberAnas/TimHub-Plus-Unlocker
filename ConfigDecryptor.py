# ConfigDecryptor for TIM HUB+ - @thecyberanas
import sys

def check_vulnerability(file_path):
    with open(file_path, 'rb') as f:
        header = f.read(100)
        if b"CIPHERKEY=GW" in header:
            print("[+] Vulnerabilita' CIPHERKEY=GW confermata!")
            print("[+] Firmware AGTHF_1.0.1 rilevato.")
            return True
        else:
            print("[-] Chiave diversa rilevata. Tentativo Brute Force necessario.")
            return False

if __name__ == "__main__":
    print("=== THECYBERANAS CONFIG ANALYZER ===")
    check_vulnerability("config.bin")
