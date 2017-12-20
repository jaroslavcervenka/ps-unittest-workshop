function Invoke-BuildIfChanged {
    [CmdletBinding()]
    param()

    $thisVersion = Get-Version
    $nextVersion = Get-NextVersion
    if ($thisVersion -ne $nextVersion) { 
        Invoke-Build $nextVersion }
    
        return $nextVersion
}

function Invoke-Build{
    [CmdletBinding()]
    param(
        [string] $Version 
    )

    Write-Host "a build was run for version: $Version"
}

# Actual definitions of Get-Version and Get-NextVersion are not shown here,
# since we'll just be mocking them anyway.  However, the commands do need to
# exist in order to be mocked, so we'll stick dummy functions here

function Get-Version { return 0 }
function Get-NextVersion { return 0 }

Export-ModuleMember -Function Invoke-BuildIfChanged