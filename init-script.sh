#!/bin/bash
set -e

# Install necessary tools
sudo apt-get update && sudo apt-get install -y build-essential dkms

# Add NVIDIA package repositories
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update

# Install CUDA
sudo apt-get install -y cuda

# Install cuDNN (Ensure you've downloaded the right version to /tmp)
sudo dpkg -i /tmp/libcudnn*.deb

# Cleanup
rm -rf /tmp/cuda-keyring_1.0-1_all.deb
