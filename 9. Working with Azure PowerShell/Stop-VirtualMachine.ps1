[CmdletBinding()]
param(
    [parameter(Mandatory=$true)]
    [string] $VirtualMachineName,

    [parameter(Mandatory=$true)]
    [string] $ResourceGroupName
)

Import-Module AzureRM

Get-AzureRmVM -ResourceGroupName $ResourceGroupName -Name $VirtualMachineName

# Throw exception when machine does not exist

# Test machine status before a stopping

Stop-AzureRmVm -ResourceGroupName $ResourceGroupName -Name $VirtualMachineName