#!/bin/bash

echo "===================================="
echo "Starting Infrastructure Deployment"
echo "===================================="

PROJECT_ROOT=$(dirname $(dirname $(realpath $0)))

echo "Project root: $PROJECT_ROOT"

echo ""
echo "Step 1: Checking dependencies"
bash $PROJECT_ROOT/infrastructure/check_dependencies.sh

echo ""
echo "Step 2: Installing Docker if needed"
bash $PROJECT_ROOT/infrastructure/install_docker.sh

echo ""
echo "Step 3: Installing Nginx if needed"
bash $PROJECT_ROOT/infrastructure/install_nginx.sh

echo ""
echo "Step 4: Starting Docker containers"

docker compose -f $PROJECT_ROOT/docker/docker-compose.yml up -d

echo ""
echo "===================================="
echo "Deployment Completed Successfully"
echo "===================================="
