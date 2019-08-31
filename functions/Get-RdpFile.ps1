function Get-RdpFile {
<#
#>
    [cmdletbinding()]
    param(
        # Path of the RDP file to be created
        [parameter(Mandatory)]
        [string] $Path
    )
    
    Get-Content -LiteralPath $Path | ForEach-Object -Begin {
        $HashObject = [ordered]@{}
    } -Process {
        $CurrentLine = $_.split(':')
        if ('i' -eq $CurrentLine[1]) {
            $HashObject.Add($CurrentLine[0], [int]$CurrentLine[2])
        } elseif ('s' -eq $CurrentLine[1]) {
            $HashObject.Add($CurrentLine[0], [int]$CurrentLine[2])
        }
    } -End {
        [pscustomobject]$HashObject
    }
}