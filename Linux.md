# Linux Cheatsheet

## Scripts
	chmod u+x ./<script_name>		# Grants the script owner execution rights for a script
	chmod a+x ./<script_name>		# Grants all users execution rights
	./<script_name>					# Executes the script

## Help
To get help for shell commands use the manual command

    # example for wget command
	man wget

## Shell commands
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
