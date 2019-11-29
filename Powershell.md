# Powershell
Basic Tips and tricks for Powershell

## Commands
	Test-Path "c:\temp\file.txt" 		# Returns True if file exists, and False if not

## Objects and Types
	# Calling static methods and properties
	> [System.Environment]::CurrentDirectory
	c:\temp
	> [System.Math]::Sqrt(9)
	3

## Scripts

### Script parameters

### Default parameters

### Script Requirements
You can write preprocessor requirements in the top of your scripts to ensure admin rights, specific modules to be installed, etc.

	#Requires -Version <N>[.<n>]
	#Requires -PSSnapin <PSSnapin-Name> [-Version <N>[.<n>]]
	#Requires -Modules { <Module-Name> | <Hashtable> }
	#Requires -ShellId <ShellId> -PSSnapin <PSSnapin-Name> [-Version <N>[.<n>]]
	#Requires -RunAsAdministrator

See [Ms docs](https://docs.microsoft.com/da-dk/powershell/module/microsoft.powershell.core/about/about_requires) for details.

## Conditional logic
	-eq			# Equal to
	-lt			# Less than
	-gt			# Greater than
	-ne			# Not equal to
	-like			# @("John Doe", "Jane Doe") | ? {$_ -like "*Doe"} => "John Doe", "Jane Doe"

	-and		
	-or

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
		Write-Hoste _$.Exception.Message
	}

## Tricks
### Running cmdline tools from powershell
	# Setting up 7zip to extract archive - useful for scripts 
	> set-alias sz "$env:ProgramW6432\7-Zip\7z.exe"
	> sz e "c:\temp\archive.gz"

	# - or for setting up shortcuts in you profile
	> set-alias subl "...\SublimeText3.exe"	# Add to $profile
	> subl .\myFile.txt						# run in shell to open text file in Sublime
