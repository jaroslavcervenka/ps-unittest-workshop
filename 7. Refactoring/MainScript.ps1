[CmdletBinding()]
param(
    [parameter(Mandatory=$true)]
    [string] $Source
)

function Test-FileExist{
    param(
        [parameter(Mandatory=$true)]
        [string] $Source
    )

    Write-Output "Testing path $Source"

    return Test-Path -Path $Source
}

function Get-TestIsEnabled{
    $false
}

if(Get-TestIsEnabled){
    $exists = Test-FileExist -Source $Source
}else{
    Write-Output 'Testing path is not enabled.'
}

