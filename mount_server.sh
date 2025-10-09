#!/bin/bash
if [ "$EUID" -eq 0 ]; then
    hpath="/home/$SUDO_ROOT"
else
    hpath="$HOME"
fi
sudo sshfs -o allow_other,default_permissions,uid=1000,gid=1000,IdentityFile=$hpath/.ssh/id_ed25519 $1:$2 /mnt/remote_data