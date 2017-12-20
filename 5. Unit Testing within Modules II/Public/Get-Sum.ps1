function Get-Sum{
    [CmdletBinding()]
    param()
    
    $valueA = Get-ValueA
    $valueB = Get-ValueB

    if($valueA -eq 0 -or $valueB -eq 0){
        throw 'Value A or value B is zero'
    }

    Write-Host "$valueA + $valueB"

    return  $valueA + $valueB
}