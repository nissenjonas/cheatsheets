# Ubuntu Cheatsheet
I have been using Ubuntu 14.x while playing around with Linux.

## Scripts
	chmod u+x ./<script_name>		# Grants the script owner execution rights for a script
	chmod a+x ./<script_name>		# Grants all users execution rights
	./<script_name>					# Executes the script

## Help
To get help for shell commands use the manual command
    
	man wget 						# example for wget command

## Shell commands
### Basic commands
	rm -f -r <file_name> 			# Delete file or folder. -f is Force and -r is recursive
	visudo							# Opens up super user file in standard editor
	
### apt-get
	apt-get install (-s) <package_name> 		# -s runs a simulation 
	apt-get remove (--purge) <package_name> 	# --purge option will remove all configuration and data
	apt-get autoremove							# cleansup pacakges installed as dependencies but no longer used
	apt-cache policy <package_name>				# lists possible versions to be installed and installed version
### wget	
	# Ftp
	wget ftp://username:password@SERVERNAME/directory/file
	# Http
	wget http://www.url.com/path/to/filename.fileextension

## Tools
### Nano
Super simple text editor

	# Install
	sudo apt-get install nano

	# Open
	nano [filename]

	# shortcuts
	Quit:		Ctrl+x
	Save: 		Ctrl+o
