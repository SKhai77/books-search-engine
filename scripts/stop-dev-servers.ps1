$ports = 3000, 3001

foreach ($port in $ports) {
  $listeners = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue

  foreach ($listener in $listeners) {
    Write-Host "Stopping process $($listener.OwningProcess) using port $port..."
    Stop-Process -Id $listener.OwningProcess -Force
  }
}