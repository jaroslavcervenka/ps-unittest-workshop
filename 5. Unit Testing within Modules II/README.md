# Unit Testing within Modules II

## Steps

1. Write tests for each context
1. Run code coverage Invoke-Pester -Script x.tests.ps1 -CodeCoverage x.ps1
1. Run code analysis Invoke-ScriptAnalyzer -Path

```powershell

Describe 'Tests for function Get-Sum'{    
    Context 'Gets values from private functions Get-ValueA, Get-ValueB'{
        
        It 'should be 3'{
            $result = Get-Sum
            $result | Should -Be 3
        }        
    }
    
    Context 'Gets values from mocked functions - Get-ValueA gets 100, Get-ValueB gets 200'{
        Mock -CommandName Get-ValueA -ModuleName MyModule2 -MockWith {100}
        Mock -CommandName Get-ValueB -ModuleName MyModule2 -MockWith {200}

        It 'shoud be 300'{
            $result = Get-Sum
            $result | Should -Be 300
        }
    }

    Context 'throws exeption when value A or value B is zero'{
        #Mock functions
        Mock -CommandName Get-ValueA -ModuleName MyModule2 -MockWith {0}

        It 'throws exception when a value is zero'{
            {Get-Sum} | Should throw
        }
    }
}
```