function Remove-Cache {
    #Test-Path
    Remove-Item "$env:TEMP\cache.txt"
}

function Remove-FileArray{
    param(
        [string[]] $Files
    )

    foreach($file in $Files){
        Remove-Item -Path $file
    }    
}

function Invoke-Cleanup{
    param(
        [string] $PathToFolder
    )

    $files = Get-ChildItem -Path $PathToFolder -File -Recurse | ForEach-Object {$.FullName}

    Remove-Cache
    Remove-FileArray -Files $files    
}

Describe 'Remove-Cache tests' {

    It 'Removes cached results from temp\cache.text' {
        #Arrange

        #Act

        #Assert
    }
}

Describe 'Invoke-Cleanup tests' {
    
}