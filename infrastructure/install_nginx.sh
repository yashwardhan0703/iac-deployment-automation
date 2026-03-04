#!/bin/bash

echo "Checking Nginx installation..."

if command -v nginx &> /dev/null
then
    echo "Nginx already installed"
else
    echo "Installing Nginx..."

    sudo apt update -y
    sudo apt install nginx -y

    sudo systemctl start nginx
    sudo systemctl enable nginx

    echo "Nginx installation completed"
fi
