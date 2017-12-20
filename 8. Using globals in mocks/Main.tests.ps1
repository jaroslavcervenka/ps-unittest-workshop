function Get-Version{
    [CmdletBinding()]
    param()

    return '1.0.0'
}
function Invoke-Build{
    [CmdletBinding()]
    param(
        [string] $Version 
    )

    if(!$Version){
        $Version = Get-Version
    }
    
    Write-Debug "Version is $Version"
}

Describe 'Main tests'{
    $Global:TestVersion = '2.0.0'


    #Remove global variable
}