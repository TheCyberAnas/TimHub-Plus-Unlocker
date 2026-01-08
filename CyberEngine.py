import socket
import sys
import time

# Configurazione CyberAnas
IP_PC = "192.168.1.100"
PORT = 67 # Porta BOOTP Standard

def start_engine():
    print("--- MOTORE CYBER ANAS AVVIATO ---")
    try:
        # Crea un socket per sparare pacchetti a raffica
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
        
        while True:
            # Pacchetto d'attacco "finto" per forzare l'apertura SSH
            # Questo è il cuore dell'attacco principale
            payload = b"\x02\x01\x06\x00" + b"\x00" * 300 
            s.sendto(payload, ('255.255.255.255', 68))
            time.sleep(0.1) # Attacco ogni 100ms (velocissimo!)
            
    except Exception as e:
        print(f"Errore: {e}")

if __name__ == "__main__":
    start_engine()
