@echo off
setlocal

echo ================================================
echo Cleaning all modules in the parent project...
echo ================================================

:: Run mvn clean
mvn clean install

echo ================================================
echo Installing all modules...
echo ================================================

pause
endlocal
