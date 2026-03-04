#!/bin/bash

echo "Checking required tools..."

if command -v docker &> /dev/null
then
    echo "Docker already installed"
else
    echo "Docker not installed"
fi

if command -v nginx &> /dev/null
then
    echo "Nginx already installed"
else
    echo "Nginx not installed"
fi

if command -v docker-compose &> /dev/null
then
    echo "Docker Compose already installed"
else
    echo "Docker Compose not installed"
fi
