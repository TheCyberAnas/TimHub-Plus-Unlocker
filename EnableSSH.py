# TheCyberAnas - SSH Flag Finder
with open("config.bin", "rb") as f:
    data = f.read()
    
print("[*] Ricerca flag SSH in corso...")
# Cerchiamo i bit che controllano l'accesso remoto
if b"ssh" in data.lower():
    print("[+] Stringa SSH trovata nel binario!")
    # Qui cercheremo di capire se è impostata su 0 o 1
else:
    print("[-] Flag non trovata. Il firmware 1.0.1 la nasconde bene.")

print("\n[!] Per OpenWrt serve la 'Bank Planning'.")
