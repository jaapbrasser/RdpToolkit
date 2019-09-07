# RdpToolkit
Module for generating and changing .rdp files using PowerShell

## Origin of this Module

I have the desire to use PowerShell to manipulate the setting in an .rdp file, but there are no modules available. I found one old PowerShell 1 reference of using here-strings to accomplish this.

## Usage

Generate a .rdp by running the following command:

```
New-RdpFile -Path $home/server01.rdp -Full_Address server01.jaapbrasser.com
```

Copy an existing configuration, updating the address of the server:

```
Get-RdpFile -Path $home/server01.rdp | New-RdpFile -Path $home/server02.rdp -full_address server02.jaapbrasser.com
```

Update an address in an existing .rdp file:

```
Set-RdpFile -Path $home/server01.rdp -Full_Address server01.jaapbrasser.com
```

## Reference

[PowerShell Team Blog - RDP File Generation/Use of HERE-Strings](https://devblogs.microsoft.com/powershell/rdp-file-generationuse-of-here-strings/)
