#!/bin/bash
# Install MicroK8s via Snap
sudo snap install microk8s --classic
sudo snap install kubectl --classic
# Add user to the microk8s group for permissions
sudo usermod -aG microk8s $USER
mkdir -p ~/.kube
sudo chown -f -R $USER ~/.kube
microk8s config > ~/.kube/config
# Enable common add-ons for Kubernetes
microk8s enable dns dashboard storage
echo "MicroK8s installed and basic add-ons enabled. Please log out and back in to apply group permissions."
