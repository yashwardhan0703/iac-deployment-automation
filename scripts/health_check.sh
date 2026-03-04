#!/bin/bash

echo "===================================="
echo "Running Infrastructure Health Check"
echo "===================================="

echo ""
echo "Checking Docker containers..."
docker ps

echo ""
echo "Testing backend endpoint..."

curl -s http://localhost:5000

echo ""
echo ""
echo "Health check completed"
