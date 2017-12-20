function Copy-FileInternal{
    [CmdletBinding()]
    param(
        [parameter(Mandatory=$true)]
        [string] $Source
    )

    $destination = $Script:Destination
    Copy-Item -Path $Source -Destination $destination
}