dotnet nuget push .\dekoeky.hello-world\bin\Release\dekoeky.hello-world.*.nupkg `
  --skip-duplicate `
  -s https://api.nuget.org/v3/index.json .\check-nuget-problems.ps1 `
  --api-key NUGET.ORG_API_KEY