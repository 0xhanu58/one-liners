sudo smbserver.py mepro /linux-storage/offsec/pen-200-mine/labs/OSCP-A/ms02.os -smb2support -username myuser -password mypassword -port 4450

# mount 
net use Z: \\192.168.45.210@port\mepro /user:username password /persistent:yes /opt:sec=ntlmv2

# umount
net use Z: /delete /force /persistent:no
# verify
net use
