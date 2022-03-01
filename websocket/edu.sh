#!/bin/bash
# Proxy For Edukasi & Imclass
# My Telegram : https://t.me/zerossl
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
# Link Hosting Kalian
akbarvpn="raw.githubusercontent.com/bolodewe87/scriptvps/main/websocket"

# Getting Proxy Template
wget -q -O /usr/local/bin/sshws https://${akbarvpn}/sshws.py
chmod +x /usr/local/bin/sshws

# Installing Service
cat > /etc/systemd/system/sshws.service << END
[Unit]
Description=SSHWS BENDUNG COLO PENGKOL BY GANDRING
Documentation=https://t.me/zerossl
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/sshws 8880
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable sshws
systemctl restart sshws

# Getting Proxy Template
wget -q -O /usr/local/bin/ovpnws https://${akbarvpn}/ovpnws.py
chmod +x /usr/local/bin/ovpnws

# Installing Service
cat > /etc/systemd/system/ovpnws.service << END
[Unit]
Description=OVPNWS GAJAH DEMAK BY WISNU COKRO SATRIO
Documentation=https://t.me/zerossl
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ovpnws 2086
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ovpnws
systemctl restart ovpnws

# Getting Proxy Template
#wget -q -O /usr/local/bin/ws-tls https://${akbarvpn}/ws-tls
#chmod +x /usr/local/bin/ws-tls

# Installing Service
#cat > /etc/systemd/system/ws-tls.service << END
[Unit]
Description=SSHWS GAJAH DEMAK BY WISNU COKRO SATRIO
Documentation=https://t.me/zerossl
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ws-tls 443
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

#systemctl daemon-reload
#systemctl enable ws-tls
#systemctl restart ws-tls
