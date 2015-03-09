#Git Cheatsheet
List of Git commands, configuration and tools 

## Flow
	git add .									# Stages files for commit (. indicates current folder)
	git add -u .								# Stage deletion of files
	git reset <file>							# Unstage file (short for git reset HEAD)
	git checkout -- <file>						# Undo specifc file
	git checkout -- .							# Undo all changes
	git commit -m "commit message"	
	git commit --amend -m "new commit message"	# Change the last commit message

## Commands
	# File compare
	git difftool [filename]				# Start difftool and shows pending changes for modified file
	git diff [filename]					# shows diff in terminal
	
## Configuration

### Commands (for scripting setup)
	
	git config user.name "user name" 		# Set user name for curent repository	
	git config --global "user name" 		# Set user name globally
	
	git config --global diff.tool diffmerge
	git config --global difftool.diffmerge.cmd 'C:/.../sgdm.exe' $LOCAL $REMOTE

### Configuration file
	[user]
		name = Firstname Lastname
		email = me@mail.com	
	[diff]
		tool = diffmerge
	[difftool "diffmerge"]
		cmd = 'C:/.../sgdm.exe' $LOCAL $REMOTE
	...

## Tools
### PoshGit
	# Starts ssh-agent. 
	# Keeps passphrase for a session in order only to enter it once
	Start-SshAgent