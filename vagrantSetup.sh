#!/bin/bash
apt update && apt upgrade -y && \
apt-get update && apt-get upgrade -y && \
apt-get install -y \
    libc6-dev-i386 \
    make \
    lldb \
    gdb && \
echo "Restarting Packagekit service..." && \
systemctl restart packagekit.service && \
echo "Restarted" && \
echo "Rebooting..." && \
reboot