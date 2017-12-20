function Invoke-GetDateRemotely{
    [CmdletBinding()]
    param(
        [parameter(Mandatory=$true)]
        [string] $ComputerName,

        [parameter(Mandatory=$true)]
		[PSCredential] $Credential
    )

    Invoke-Command `
			-ComputerName $computerName `
			-SessionOption $sessionOption `
			-Credential $Credential `
			-UseSSL `
			-ScriptBlock {
                Get-Date
            }
}

Describe 'Unit tests for Invoke-GetDateRemotely' {

}