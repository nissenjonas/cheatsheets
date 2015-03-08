#Powershell
Basic Tips and tricks for Powershell

## Commands
	Test-Path "c:\temp\file.txt" 		# Returns True if file exists, and False if not

## Objects and Types
	# Calling static methods and properties
	> [System.Environment]::CurrentDirectory
	c:\temp
	> [System.Math]::Sqrt(9)
	3

## Conditional logic
	-eq			# Equal to
	-lt			# Less than
	-gt			# Greater than
	-ne			# Not equal to

	-and		
	-or

	# Example
	> if(7 -gt 10 -and 10 -ne 11) { Write-Host True } else { Write-Host False } 
	> False
## Filters
	#  
	> 1..10 | ? { $_ % 2 } | Write-Host

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