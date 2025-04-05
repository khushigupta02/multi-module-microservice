#!/bin/bash

echo "==============================================="
echo "Cleaning all modules in the parent project..."
echo "==============================================="

# Run mvn clean install
mvn clean install

echo "==============================================="
echo "Installing all modules..."
echo "==============================================="

# Pause-like behavior (wait for user input)
read -p "Press Enter to continue..."
