# This script can be used to manually push a NuGet package version to NuGet.org

$version = '*' # The * symbol is a wildcard

# Step 1: Retrieve the ApiKey from the projects user secrets
# (This is done to prevent storing the key in the .git directory)

$json = dotnet user-secrets list --json --project dekoeky.hello-world
$secrets = $json | % { $_ -replace '//(BEGIN|END)' } | ConvertFrom-Json
$apiKey = $secrets.'NuGet:Api-Keys:NuGet.org'

# Step 2: Push the nuget package
dotnet nuget push ".\dekoeky.hello-world\bin\Release\dekoeky.hello-world.$version.nupkg" \
  --skip-duplicate \
  -s https://api.nuget.org/v3/index.json \
  --api-key $apiKey