#!/bin/bash
sudo apt update
sudo apt install gnupg -y
sudo apt install rclone -y
sudo wget https://github.com/damithkothalawala/migration-scripts/raw/main/rclone
sudo mv rclone /usr/bin/rclone
sudo chmod +x /usr/bin/rclone
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
sudo wget https://github.com/damithkothalawala/migration-scripts/raw/main/rclone.conf.gpg
echo "Please use provided key"
gpg rclone.conf.gpg
sudo mkdir -p /root/.config/rclone/
sudo mv rclone.conf /root/.config/rclone/
sudo chown root.root /root/.config/rclone/rclone.conf  
