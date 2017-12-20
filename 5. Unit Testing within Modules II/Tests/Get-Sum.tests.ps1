Get-Module MyModule2 | Remove-Module
Import-Module $PSScriptRoot\..\MyModule2.psm1

Describe 'Tests for function Get-Sum'{
    
    Context 'Gets values from private functions Get-ValueA, Get-ValueB'{
        
        It 'should be 3'{

        }        
    }
    
    Context 'Gets values from mocked functions - Get-ValueA gets 100, Get-ValueB gets 200'{
        #Arrange

        It 'shoud be 300'{
            #Act

            #Assert
        }
    }

    Context 'Value A or value B is zero'{
        #Arrange

        It 'throws exception when a value is zero'{
            #Act

            #Assert
        }
    }
}