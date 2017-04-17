#!/bin/sh

set -e

rm /etc/resolv.conf
# systemctl stop systemd-resolved

echo 'nameserver 8.8.8.8' > /etc/resolv.conf
echo 1 > /var/run/openvpn.running # for i3status
openvpn --config client.conf || true
rm /etc/resolv.conf
rm /var/run/openvpn.running

ln -s /var/run/systemd/resolve/resolv.conf /etc/resolv.conf
# systemctl start systemd-resolved
