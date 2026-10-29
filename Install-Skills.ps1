$ErrorActionPreference = 'Stop'
$destination = Join-Path $env:USERPROFILE '.copilot\skills'
$names = @('requirements-drafting', 'requirements-contradictions', 'requirements-gap-analysis')
foreach ($name in $names) {
    if (Test-Path -LiteralPath (Join-Path $destination $name)) { throw "Skill already exists: $name. No files were copied." }
}
New-Item -ItemType Directory -Path $destination -Force | Out-Null
foreach ($name in $names) {
    Copy-Item -LiteralPath (Join-Path $PSScriptRoot $name) -Destination $destination -Recurse
    foreach ($file in Get-ChildItem -LiteralPath (Join-Path $PSScriptRoot $name) -Recurse -File) {
        $relative = $file.FullName.Substring($PSScriptRoot.Length).TrimStart('\')
        if ((Get-FileHash -LiteralPath $file.FullName).Hash -ne (Get-FileHash -LiteralPath (Join-Path $destination $relative)).Hash) { throw "Copy verification failed: $relative" }
    }
}
Write-Host "Installed and verified all three skills in $destination. Restart VS Code to use them."
