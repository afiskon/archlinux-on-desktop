#!/bin/sh

set -e

# uncomment if you are NOT using NetworkManager
# systemctl stop systemd-resolved

mv /etc/resolv.conf /etc/resolv.conf.bak

echo 'nameserver 8.8.8.8' > /etc/resolv.conf
echo 1 > /var/run/openvpn.running # for i3status
openvpn --config client.conf || true
rm /var/run/openvpn.running
mv /etc/resolv.conf.bak /etc/resolv.conf

# uncomment if you are NOT using NetworkManager
# systemctl start systemd-resolved
