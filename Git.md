# Git Cheatsheet
List of Git commands, configuration and tools 

## Flow
	git checkout -b [featurebranch]	
	git add --all								# Stages all files for commit	
	git commit -m "commit message"	
	git fetch origin							# download remote commits 
	git rebase master			
	git rebase -i HEAD~[x]						# x number of commits to rebase interactivly
	git checkout master
	git merge [featurebranch]
	
	--------------------------------------------

	git commit --amend -m "new commit message"	# Change the last commit message

	--------------------------------------------
	
	git stash									# saves all modified files from the working directory to be retrieved later
	git stash pop 							# retrives the latest stash and applies it
		

## Rollback
	git reset <file>							# Unstage file (short for git reset HEAD)
	git reset HEAD								# Unstage all stages files
	git reset --hard							# Undo all uncommited changes 
	git checkout -- <file>						# Undo specifc file
	git reset --soft HEAD^						# Undo commit 

# Branches
    git checkout -				# Checks out last used branch
## List
    git branch                                  # lists all local branches
    git branch -v                               # -v shows last commit on all local branches
    git branch --merged / --no-merged           # filter to see branches that have or have not been merged into current branch	
## Delete
    git branch -d [branch_name]                 # deletes a local branch
    git push origin [branch_name]               # delete the remote branch after deleting it locally 

# log
   git log
   git log branch1..branch2 					# two-dot range. Logs all commits from branch2, but exclude the ones from branch1. E.g. origin..HEAD or develop..feature-branch

# Remotes
	git remote add origin ssh://login@[ip]/[path]
	git remote add origin http://[ip]/[path]

	git remote add upstream https://url.git 	# useful for merging upstream remotes when forking on github.

# Tagging 
	git tag										# lists all tags
	git tag -a [tagname] -m [comment] 			# creates annotated tag
	git push origin [tagname]					# push to remote

## Aliases
	unstage: git reset head
	undo-commmit: reset --soft HEAD^

## Commands
	# File compare
	git difftool [filename]				# Start difftool and shows pending changes for modified file
	git diff [filename]					# shows diff in terminal
	
## Configuration

### Commands (for scripting setup)
	
	git config --global credential.helper cache						# Caches your credentials for 15 minutes
	git config --global credential.helper "cache --timeout=XXXX"	# Extend the credential cache timeout
	git config credential.helper wincred							# working with TFS Git

	git config user.name "user name" 								# Set user name for curent repository	
	git config --global "user name" 								# Set user name globally
	
	git config --global diff.tool diffmerge
	git config --global difftool.diffmerge.cmd 'C:/.../sgdm.exe' $LOCAL $REMOTE
	git config --global core.editor "C:\Program Files (x86)\Microsoft VS Code\code.exe" # setup default editor for git.

### Configuration file
	[user]
		name = Firstname Lastname
		email = me@mail.com	
	[diff]
		tool = diffmerge
	[difftool "diffmerge"]
		cmd = 'C:/.../sgdm.exe' $LOCAL $REMOTE
	[core]
		editor = C:\\Program Files (x86)\\Microsoft VS Code\\code.exe
	...

### Ignore files
Exclude files from your repo

	<filename>			# Specific file 
	<foldername>		# Specific folder
	*.dll				# Pattern excluding all dll files


## Tools
* PoshGit
* SourceTree
