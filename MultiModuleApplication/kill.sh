#!/bin/bash
echo "Killing ports: 8761, 8080, 8081, 8082, 8083"

for port in 8761 8080 8081 8082 8083; do
  pid=$(lsof -ti:$port)
  if [ -n "$pid" ]; then
    echo "Killing process on port $port with PID $pid"
    kill -9 $pid
  else
    echo "No process found on port $port"
  fi
done

echo "All specified ports have been cleared."
