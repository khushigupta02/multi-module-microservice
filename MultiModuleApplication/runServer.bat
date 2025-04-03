@echo off
setlocal

echo ================================================
echo Starting Eureka Server...
echo ================================================
start cmd /k "cd eureka-server && mvn spring-boot:run"

:: Wait for Eureka Server to be fully up
:waitForEureka
timeout /t 9 >nul


echo Eureka Server is UP!
echo ================================================



endlocal
