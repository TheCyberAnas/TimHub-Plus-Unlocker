import os
import time
import subprocess

# Colori per rendere tutto più comprensibile
GREEN = "\033[1;32m"
RED = "\033[1;31m"
YELLOW = "\033[1;33m"
CYAN = "\033[1;36m"
RESET = "\033[0m"

def setup():
    print(f"{CYAN}==========================================")
    print(f"       ANAS ULTIMATE ROUTER UNLOCKER")
    print(f"=========================================={RESET}")
    
    # 1. Configura la rete
    print(f"{YELLOW}[+] ATTACCO 1: Configurazione Ethernet 3...{RESET}")
    cmd_ip = 'netsh interface ip set address name="Ethernet 3" static 58.162.0.1 255.255.255.0'
    os.system(cmd_ip)
    
    print(f"{GREEN}[OK] IP 58.162.0.1 impostato correttamente.{RESET}\n")

    # 2. Istruzioni Facili
    print(f"{CYAN}--- ISTRUZIONI SEMPLICI ---{RESET}")
    print("1. Spegni il router.")
    print("2. Tieni premuto RESET con una graffetta.")
    print("3. Accendi il router (senza mollare RESET).")
    print(f"{YELLOW}4. Quando vedi le scritte scorrere, MOLLA IL RESET!{RESET}\n")
    
    input("Premi INVIO quando sei pronto a far partire l'attacco...")

    # 3. Lancio dell'Exploit che hai sul Desktop
    desktop = os.path.join(os.path.join(os.environ['USERPROFILE']), 'Desktop')
    exploit_path = os.path.join(desktop, "tch-exploit-win.exe")
    
    if os.path.exists(exploit_path):
        print(f"{GREEN}[+] Lancio del motore di sblocco...{RESET}")
        subprocess.call([exploit_path])
    else:
        print(f"{RED}[!] ERRORE: Non trovo tch-exploit-win.exe sul Desktop!{RESET}")

if __name__ == "__main__":
    setup()
