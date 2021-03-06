function Get-RdpFile {
<#
.SYNOPSIS
Get the .RDP file contents 
    
.DESCRIPTION
This function is used to programmatically gather information from .rdp files, which can be used to create or update existing .Rdp files

.NOTES   
Name:        Get-RdpFile
Module:      RdpToolkit
Author:      Jaap Brasser
DateCreated: 2019-08-30
DateUpdated: 2019-09-01
Version:     1.0.0
Blog:        https://www.jaapbrasser.com

.LINK
https://www.github.com/jaapbrasser/rdptoolkit

.EXAMPLE
Get-RdpFile -Path $home/server01.rdp

Description
-----------
Get structured objects back from the .rdp files

.EXAMPLE
Get-RdpFile -Path $home/server01.rdp | New-RdpFile -Path $home/server02.rdp -Full_address server02.jaapbrasser.com

Description
-----------
Create a copy of an existing .rdp file, copying all settings only changing the file name and the full_address value
#>

    [cmdletbinding()]
    param(
        # Path of the RDP file to be created
        [parameter(Mandatory=$true)]
        [alias('FullName')]
        [string] $Path
    )
    
    process {
        Get-Content -LiteralPath $Path | ForEach-Object -Begin {
            if (2 -lt $PSVersionTable.PSVersion.Major) {
                $HashObject = [ordered]@{}
            } else {
                $HashObject = @{}
            }
        } -Process {
            $CurrentLine = $_.split(':')
            if ('i' -eq $CurrentLine[1]) {
                $HashObject.Add($CurrentLine[0].Replace(' ','_'), [int]$CurrentLine[2])
            } elseif ('s' -eq $CurrentLine[1]) {
                $HashObject.Add($CurrentLine[0].Replace(' ','_'), [string]$CurrentLine[2])
            }
        } -End {
            [pscustomobject]$HashObject
        }
    }
}