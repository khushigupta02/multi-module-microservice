@echo off
echo Killing ports: 8761, 8080, 8081, 8082, 8083

for %%p in (8761 8080 8081 8082 8083) do (
    for /f "tokens=5" %%a in ('netstat -aon ^| findstr :%%p') do (
        echo Killing process on port %%p with PID %%a
        taskkill /PID %%a /F
    )
)

echo All specified ports have been cleared.
pause
