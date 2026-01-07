import socket
import time

target_ip = "192.168.1.1"
ports = [22, 23, 80, 443]

print(f"=== THECYBERANAS: OPENWRT PRE-INSTALLATION ===")
print(f"[*] Target: {target_ip}")

def check_ssh():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.settimeout(1)
    result = s.connect_ex((target_ip, 22))
    s.close()
    return result == 0

print("[*] Tentativo di forzatura porta 22 (SSH)...")
for i in range(5):
    if check_ssh():
        print("[!!!] PORTA 22 APERTA! SSH RAGGIUNGIBILE!")
        break
    else:
        print(f"[-] Tentativo {i+1}: Porta chiusa. Invio payload di sblocco...")
        # Qui simuliamo l'invio di un pacchetto di sblocco
        time.sleep(2)

print("\n[!] PROSSIMO PASSO: Flash del Kernel OpenWrt via TFTP.")
