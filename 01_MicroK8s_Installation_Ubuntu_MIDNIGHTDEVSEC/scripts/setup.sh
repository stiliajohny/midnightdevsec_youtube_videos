#!/bin/bash
# Update system and install essential packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget vim net-tools
sudo apt install snapd -y
echo "System updated and essential tools installed."
