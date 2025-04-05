#!/bin/bash

echo "Eureka Server is UP!"
echo "==============================================="

# Start User Service in background
echo "Starting User Service..."
(cd user-service && mvn spring-boot:run) &
sleep 5

# Start Admin Service in background
echo "Starting Admin Service..."
(cd admin-service && mvn spring-boot:run) &
sleep 5

# Start Welcome Service in background
echo "Starting Welcome Service..."
(cd welcome-service && mvn spring-boot:run) &
sleep 5

# Start Gateway Service in background
echo "Starting Gateway Service..."
(cd gateway-service && mvn spring-boot:run) &

echo "================================================="
echo "All services built and started successfully!"
echo "================================================="
