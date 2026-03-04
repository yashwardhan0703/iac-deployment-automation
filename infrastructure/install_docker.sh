#!/bin/bash

echo "Checking Docker installation..."

if command -v docker &> /dev/null
then
    echo "Docker already installed"
else
    echo "Installing Docker..."

    sudo apt update -y
    sudo apt install docker.io -y

    sudo systemctl start docker
    sudo systemctl enable docker

    echo "Docker installation completed"
fi
