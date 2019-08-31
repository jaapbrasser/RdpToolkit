function Get-RdpFile {
<#
#>
    [cmdletbinding()]
    param(
        # Path of the RDP file to be created
        [parameter(Mandatory)]
        [string] $Path
    )
}