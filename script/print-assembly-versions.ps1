
Get-ChildItem -Path ./dekoeky.hello-world/bin/Debug -Filter *.dll -Recurse | foreach-Object {

    $fi =  [System.IO.FileSystemInfo]$_;
    $vi = $fi.VersionInfo

    # return [pscustomobject]@{
    #     FileVersion = $vi.FileVersion; 
    #     ProductVersion = $vi.ProductVersion; 
    #     FileInfo = $fi;
    #     RelativeFilePath = $fi | Resolve-Path -Relative; 
    #     FullFilePath = $fi.FullName; 
    # } 
    
    Write-Output "📗 File:        $($fi | Resolve-Path -Relative)"
    Write-Output "ProductVersion: $($vi.ProductVersion)"
    Write-Output "FileVersion:    $($vi.FileVersion)"
    Write-Output ''
    
}  # | Format-Table
