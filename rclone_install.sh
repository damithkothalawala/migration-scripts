#!/bin/bash
sudo apt update
sudo apt install rclone -y
sudo wget https://github.com/damithkothalawala/migration-scripts/raw/main/rclone
sudo mv rclone /usr/bin/rclone
sudo chmod +x /usr/bin/rclone
