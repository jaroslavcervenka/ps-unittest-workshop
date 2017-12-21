function Rename-File {
    param(
        [string] $File,
        [string] $NewName
    )

    if(!(Test-Path -Path $File)){
        throw "File nod found in path $File."
    }

    Rename-Item -Path $File -NewName $NewName
}