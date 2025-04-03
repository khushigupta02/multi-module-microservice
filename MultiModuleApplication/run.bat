@echo off
setlocal

echo Eureka Server is UP!
echo ================================================

:: Build and Start User Service
echo Starting User Service...
start cmd /k "cd user-service && mvn spring-boot:run"
timeout /t 5 >nul

:: Build and Start Admin Service

echo Starting Admin Service...
start cmd /k "cd admin-service && mvn spring-boot:run"
timeout /t 5 >nul

:: Build and Start Welcome Service

echo Starting Welcome Service...
start cmd /k "cd welcome-service && mvn spring-boot:run"
timeout /t 5 >nul

echo Starting Gateway Service...
start cmd /k "cd gateway-service && mvn spring-boot:run"

echo =================================================
echo All services built and started successfully!
echo =================================================

endlocal
