
<#
.SYNOPSIS
    Creates a new file in path.

.DESCRIPTION
    It does not check if a file exists or not.
  
.PARAMETER FilePath
    The path to new file.
#>
[CmdletBinding()]
param
(
    [parameter(Mandatory=$true)]
    [string] $FilePath
)

New-Item -Path $FilePath -ItemType File