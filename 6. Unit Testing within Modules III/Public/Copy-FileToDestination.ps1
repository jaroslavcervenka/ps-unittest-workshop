function Copy-FileToDestination{
    [CmdletBinding()]
    param(
        [parameter(Mandatory=$true)]
        [string] $Source
    )

    Copy-FileInternal -Source $Source
}