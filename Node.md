# Common commands and tricks for Node.js

## Commands
	node -v 	# See version of Node
	npm -v 		# See version of npm 

## Tools
### PM2
Process manager for Node.js apps
github.com/Unitech/pm2

	npm install pm2 -g
	pm start index.js -i max	# -i max sets PM2 to use all cores on the box	