# PowerShell Cheatsheet

## Table of Contents
- [Commands](#commands)
- [Objects and Types](#objects-and-types)
- [Scripts](#scripts)
    - [Script Parameters](#script-parameters)
    - [Default Parameters](#default-parameters)
    - [Script Requirements](#script-requirements)
- [Conditional Logic](#conditional-logic)
- [Filters](#filters)
- [Loop](#loop)
- [Error Handling](#error-handling)
- [Tricks](#tricks)

## Commands
- `Test-Path "c:\temp\file.txt"`: Returns True if file exists, and False if not

## Objects and Types
### Calling Static Methods and Properties
- `[System.Environment]::CurrentDirectory`: returns current directory
- `[System.Math]::Sqrt(9)`: returns square root of 9

## Scripts
### Script Parameters
- TODO

### Default Parameters
- TODO

### Script Requirements
You can write preprocessor requirements in the top of your scripts to ensure admin rights, specific modules to be installed, etc.

- `#Requires -Version <N>[.<n>]`
- `#Requires -PSSnapin <PSSnapin-Name> [-Version <N>[.<n>]]`
- `#Requires -Modules { <Module-Name> | <Hashtable> }`
- `#Requires -ShellId <ShellId> -PSSnapin <PSSnapin-Name> [-Version <N>[.<n>]]`
- `#Requires -RunAsAdministrator`

See [Ms docs](https://docs.microsoft.com/da-dk/powershell/module/microsoft.powershell.core/about/about_requires) for details.

## Conditional Logic
- `-eq`: Equal to
- `-lt`: Less than
- `-gt`: Greater than
- `-ne`: Not equal to
- `-like`: Example: `@("John Doe", "Jane Doe") | ? {$_ -like "*Doe"}` => "John Doe", "Jane Doe"
- `-and`
- `-or`


# Example
> if(7 -gt 10 -and 10 -ne 11) { Write-Host True } else { Write-Host False } 
> False
## Filters
#  
> 1..10 | ? { $_ % 2 } | Write-Host

## Loop 
	# $_ is used to reference the current variable in the pipeline
	> 1..10 | % { Write-Host $_ }

## Error handling
```powershell
try
{
    ...
}
catch [System.OutOfMemoryException]
{
    # Handle specific error
}
catch
{
    Write-Host $Error.Exception.Message
}
```

## Tricks
### Running cmdline tools from powershell
```powershell
# Setting up 7zip to extract archive - useful for scripts 
> set-alias sz "$env:ProgramW6432\7-Zip\7z.exe"
> sz e "c:\temp\archive.gz"

# - or for setting up shortcuts in you profile
> set-alias subl "...\SublimeText3.exe"	# Add to $profile
> subl .\myFile.txt						# run in shell to open text file in Sublime
```
