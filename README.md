# PowerShell Unit Testing Workshop

## Agenda

* Pester - test and mock framework for PowerShell
* Testing PS code with Pester
* Testing Script modules with Pester
* More Pester features
* Static code checker
* Future: Integration tests for OSEL

## Topics, links

* Pester on Github <https://github.com/pester/Pester/wiki/Pester>
* Pester module on Microsoft Docs <https://docs.microsoft.com/en-us/powershell/module/pester/?view=powershell-6&viewFallbackFrom=powershell-5.1>
* What is unit / integration / acceptance tests <https://blogs.technet.microsoft.com/heyscriptingguy/2015/12/16/unit-testing-powershell-code-with-pester/>
* Practical PowerShell Unit-Testing: Getting Started <https://www.red-gate.com/simple-talk/sysadmin/powershell/practical-powershell-unit-testing-getting-started/>
* More Pester Features and Resources <https://blogs.technet.microsoft.com/heyscriptingguy/2015/12/18/more-pester-features-and-resources/>
* Pester examples <https://github.com/pester/Pester/tree/master/Examples>

## Prerequisities

* PowerShell 5 or newer
* Visual Studio Code <https://code.visualstudio.com/download>
* Visual Studio Code PowerShell extension <https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell>
* Pester unit test framework - latest PowerShell module Pester see <https://github.com/pester/Pester/wiki/Installation-and-Update>
  from _administrator_ PowerShell command line run

```powershell
Install-Module -Name Pester
```

Or to update

```powershell
Update-Module -Name Pester
```

* PowerShell Script Analyzer: Static Code analysis for Windows PowerShell scripts & modules

```powershell
Install-Module -Name PSScriptAnalyzer
```

Or to update

```powershell
Update-Module PSScriptAnalyzer
```