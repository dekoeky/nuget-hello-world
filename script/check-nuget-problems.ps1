dotnet list .\dekoeky.hello-world.nuget-consumer\ package --help

Write-Host Outdated: -ForegroundColor Yellow
dotnet list .\dekoeky.hello-world.nuget-consumer\ package --outdated

Write-Host Deprecated: -ForegroundColor DarkRed
dotnet list .\dekoeky.hello-world.nuget-consumer\ package --deprecated

Write-Host Vulnerable: -ForegroundColor Red
dotnet list .\dekoeky.hello-world.nuget-consumer\ package --vulnerable