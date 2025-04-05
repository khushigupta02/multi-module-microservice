#!/bin/bash

echo "==============================================="
echo "Starting Eureka Server..."
echo "==============================================="

# Start Eureka Server in background
(cd eureka-server && mvn spring-boot:run) &

# Wait for Eureka Server to start
sleep 9

echo "Eureka Server is UP!"
echo "==============================================="
