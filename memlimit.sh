#!/bin/bash
sudo mkdir -p /etc/systemd/system/user-.slice.d/
sudo rm /etc/systemd/system/user-.slice.d/50-memory.conf
sudo echo "[Slice]" >> /etc/systemd/system/user-.slice.d/50-memory.conf
sudo echo "MemoryMax=3300M" >> /etc/systemd/system/user-.slice.d/50-memory.conf
sudo echo "DefaultMemoryAccounting=yes" >> /etc/systemd/system.conf
sudo systemctl daemon-reload
echo "Done. Please reboot"
