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
	sudo reboot						
	sudo shutdown					
	
### apt-get
	apt-get install (-s) <package_name> 		# -s runs a simulation 
	apt-get remove (--purge) <package_name> 	# --purge option will remove all configuration and data
	apt-get autoremove							# cleans up pacakges installed as dependencies but no longer used
	apt-cache policy <package_name>				# lists possible versions to be installed and installed version
### wget	
	# Ftp
	$ wget ftp://username:password@SERVERNAME/directory/file
	# Http
	$ wget http://www.url.com/path/to/filename.fileextension

## User Management
	$ visudo				# Run Visudo cmd to open sudoers file in default editor
	----------------------------------------------
	# User privilege specification
	root    ALL=(ALL:ALL) ALL
	[User]   ALL=(ALL:ALL) ALL 						# Adds user as super user

	# Members of the admin group may gain root privileges
	%admin ALL=(ALL) ALL	

	# Allow members of group sudo to execute any command
	%sudo   ALL=(ALL:ALL) ALL
	[user]  ALL=(ALL:ALL) NOPASSWD: [cmd, or path to script] 	# Specify scripts or commands, 
																				# that can be run without entering sudo password.
	----------------------------------------------





## Tools
### Nano
Super simple text editor

	# Install
	$ sudo apt-get install nano

	# Open
	$ nano [filename]

	# shortcuts
	Quit:		Ctrl+x
	Save: 		Ctrl+o

### Nginx
Web server

#### Setting up SSL

	server {
	   listen 443 ssl;
	   server_name [host_name];
	
	   location / {
	      proxy_pass http://127.0.0.1:2368;
	      proxy_set_header Host $http_host;
	      proxy_buffering off;
	   }
	
	   ssl on;
	   ssl_certificate /[path]/[cert_name];
	   ssl_certificate_key /[path]/[private.key];
	   
	}

