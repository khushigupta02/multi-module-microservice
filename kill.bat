$ports = @(8761, 8080, 8081, 8082, 8083)

foreach ($port in $ports) {
    $pid = Get-NetTCPConnection -LocalPort $port -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess
    if ($pid) {
        Write-Output "Killing process on port $port with PID $pid"
        Stop-Process -Id $pid -Force
    }
}

Write-Output "All specified ports are now freed."
